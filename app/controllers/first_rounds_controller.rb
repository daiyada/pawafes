class FirstRoundsController < ApplicationController
  before_action :before_game, only: [:score, :record, :catch_point]

  def new
    @player = Player.find(params[:player_id])
    team = FirstRoundTeam.all
    @FirstRoundTeams = team.pluck(:name)
    manager = Manager.all
    @managers = manager.pluck(:name)
  end

  def create
    @FirstRound = FirstRound.new(first_round_params)
    if @FirstRound.blank?
      redirect_to new_players_path
    else
      @FirstRound.save
      redirect_to score_player_first_rounds_path(@FirstRound)
    end
  end

  def score
    @FirstRound = FirstRound.find(params[:player_id])
    @supporter = @FirstRound.supporter
  end

  def catch_point
    respond_to do |format|
      format.json
    end
  end

  def record
    @FRRecord = FirstRoundRecord.new(first_round_record_params)
    if @FRRecord.blank?
      redirect_to score_player_first_rounds_path
    else
    @FRRecord.save
    difference = @FRRecord.point_difference
      if difference > 0 
        redirect_to new_player_second_round_path
      else
        redirect_to lose_player_second_rounds_path
      end
    end
  end

  private

  def first_round_params
    params.permit(:opponent, :supporter, :supporter_mood, :horisugi_doll, :player_id)
  end

  def first_round_record_params
    params.permit(:take_part_in, 
                  :point_difference,
                  :lost_point, :hit,
                  :second_base_hit,
                  :third_base_hit,
                  :home_run,
                  :sacrifice_bunt,
                  :sacrifice_fly,
                  :steal,
                  :pitch,
                  :straight_ball_out,
                  :change_ball_out,
                  :strike_out,
                  :fly_liner_out,
                  :roller,
                  :double_play,
                  :wagama_order,
                  :muscle,
                  :agile,
                  :technique,
                  :change,
                  :spirit,
                  :player_id)
  end

  def before_game
    @player = Player.find(params[:player_id])
    @position = @player.position
    @firstround = FirstRound.find(params[:player_id])
    participation = Participation.all
    @participation = participation.pluck(:name)
    @points = Point.all

    # ポイントの算出
    @team_point = FirstRoundTeam.find_by(name: @firstround.opponent).base_point
    @manager_muscle_coefficient = Manager.find_by(name: @firstround.supporter).muscle_coefficient
    @manager_agile_coefficient = Manager.find_by(name: @firstround.supporter).agile_coefficient
    @manager_technique_coefficient = Manager.find_by(name: @firstround.supporter).technique_coefficient
    @manager_change_coefficient = Manager.find_by(name: @firstround.supporter).change_coefficient
    @manager_spirit_coefficient = Manager.find_by(name: @firstround.supporter).spirit_coefficient

    if @position == "投手"
      agile_effi = 0.1
      change_effi = 1.0
    else
      agile_effi = 1.0
      change_effi = 0.1
    end

    if @firstround.supporter == "紺野美崎" && @firstround.supporter_mood == "★☆☆"
      @mood_efficient = 1.3
    elsif @firstround.supporter == "紺野美崎" && @firstround.supporter_mood == "★★☆"
      @mood_efficient = 1.4
    elsif @firstround.supporter == "紺野美崎" && @firstround.supporter_mood == "★★★"
      @mood_efficient = 1.5
    else
      @mood_efficient = 1.0
    end

    if @firstround.horisugi_doll == "有"
      @horisugi_coefficient = 1.3
    else
      @horisugi_coefficient = 1.3
    end

    if @player.level == "達人"
      @level_coefficient = 1.3
    elsif @player.level == "ノーマル"
      @level_coefficient = 1.0
    else
      @level_coefficient = 0.5
    end
    
    @muscle_base_point = @team_point
    @muscle_action_point = (@level_coefficient * @mood_efficient * @manager_muscle_coefficient * @horisugi_coefficient).round(1)
    @muscle_total_point = @muscle_base_point + @muscle_action_point

    @agile_base_point = @team_point * agile_effi
    @agile_action_point = (@level_coefficient * @mood_efficient * @manager_agile_coefficient * @horisugi_coefficient).round(1)
    @agile_total_point = @agile_base_point + @agile_action_point

    @technique_base_point = @team_point
    @technique_action_point = (@level_coefficient * @mood_efficient * @manager_technique_coefficient * @horisugi_coefficient).round(1)
    @technique_total_point = @technique_base_point + @technique_action_point

    @change_base_point = @team_point * change_effi
    @change_action_point = (@level_coefficient * @mood_efficient * @manager_change_coefficient * @horisugi_coefficient).round(1)
    @change_total_point = @change_base_point + @change_action_point

    @spirit_base_point = @team_point
    @spirit_action_point = (@level_coefficient * @mood_efficient * @manager_spirit_coefficient * @horisugi_coefficient).round(1)
    @spirit_total_point = @spirit_base_point + @spirit_action_point
  end
end
