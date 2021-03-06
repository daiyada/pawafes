class ThirdRoundsController < ApplicationController
  before_action :before_game, only: [:score, :record, :catch_point]

  def new
    @player = Player.find(params[:player_id])
    team = ThirdRoundTeam.all
    @RoundTeams = team.pluck(:name)
    manager = Manager.all
    @managers = manager.pluck(:name)
    secondround = SecondRound.find(params[:player_id])
    @secondclimate = secondround.climate
  end

  def create
    @Round = ThirdRound.new(round_params)
    if @Round.blank?
      redirect_to new_player_third_round_path
    else
      @Round.save
      redirect_to score_player_third_rounds_path(@Round)
    end
  end

  def score
    @supporter = @round.supporter
  end

  def catch_point
    respond_to do |format|
      format.json
    end
  end

  def record
    @RRecord = ThirdRoundRecord.new(round_record_params)
    if @RRecord.blank?
      redirect_to score_player_third_rounds_path
    else
    @RRecord.save
    difference = @RRecord.point_difference
      if difference > 0 
        redirect_to new_player_fourth_round_path
      else
        redirect_to lost_player_fourth_rounds_path
      end
    end
  end

  def lost
  end

  def lost_record
    ThirdRound.create(
      opponent: "敗退",
      supporter: "敗退",
      supporter_mood: "敗退",
      horisugi_doll: "敗退",
      climate: "敗退",
      player_id: params[:player_id]
    )
    ThirdRoundRecord.create(
      take_part_in: "出場なし", 
      point_difference: -100,
      lost_point: 100,
      hit: 0,
      second_base_hit: 0,
      third_base_hit: 0,
      home_run: 0,
      sacrifice_bunt: 0,
      sacrifice_fly: 0,
      steal: 0,
      pitch: 0,
      straight_ball_out: 0,
      change_ball_out: 0,
      strike_out: 0,
      fly_liner_out: 0,
      roller: 0,
      double_play: 0,
      muscle: 0,
      agile: 0,
      technique: 0,
      change: 0,
      spirit: 0,
      player_id: params[:player_id]
    )
    redirect_to lost_player_fourth_rounds_path
  end

  private

  def round_params
    params.permit(:opponent, :supporter, :supporter_mood, :horisugi_doll, :climate, :player_id)
  end

  def round_record_params
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
    @level = @player.level
    @position = @player.position
    @round = ThirdRound.find(params[:player_id])
    participation = Participation.all
    @participation = participation.pluck(:name)
    @points = Point.all

    # ポイントの算出
    team_point = ThirdRoundTeam.find_by(name: @round.opponent).base_point
    manager_muscle_coefficient = Manager.find_by(name: @round.supporter).muscle_coefficient
    manager_agile_coefficient = Manager.find_by(name: @round.supporter).agile_coefficient
    manager_technique_coefficient = Manager.find_by(name: @round.supporter).technique_coefficient
    manager_change_coefficient = Manager.find_by(name: @round.supporter).change_coefficient
    manager_spirit_coefficient = Manager.find_by(name: @round.supporter).spirit_coefficient

    if @position == "投手"
      agile_effi = 0.1
      change_effi = 1.0
    else
      agile_effi = 1.0
      change_effi = 0.1
    end

    if @round.supporter == "紺野美崎" && @round.supporter_mood == "★☆☆"
      mood_efficient = 1.3
    elsif @round.supporter == "紺野美崎" && @round.supporter_mood == "★★☆"
      mood_efficient = 1.4
    elsif @round.supporter == "紺野美崎" && @round.supporter_mood == "★★★"
      mood_efficient = 1.5
    else
      mood_efficient = 1.0
    end

    if @round.horisugi_doll == "有"
      horisugi_coefficient = 1.3
    else
      horisugi_coefficient = 1.0
    end

    if @round.climate == "晴れ"
      climate_coefficient = 1.0
    else
      climate_coefficient = 2.0
    end

    if @level == "達人"
      level_coefficient = 1.3
    elsif @level == "ノーマル"
      level_coefficient = 1.0
    else
      level_coefficient = 0.5
    end
    
    @muscle_base_point = team_point * climate_coefficient
    @muscle_action_point = (level_coefficient * mood_efficient * manager_muscle_coefficient * horisugi_coefficient).round(1)

    @agile_base_point = team_point * climate_coefficient * agile_effi
    @agile_action_point = (level_coefficient * mood_efficient * manager_agile_coefficient * horisugi_coefficient).round(1)

    @technique_base_point = team_point * climate_coefficient
    @technique_action_point = (level_coefficient * mood_efficient * manager_technique_coefficient * horisugi_coefficient).round(1)

    @change_base_point = team_point * climate_coefficient * change_effi
    @change_action_point = (level_coefficient * mood_efficient * manager_change_coefficient * horisugi_coefficient).round(1)

    @spirit_base_point = team_point * climate_coefficient
    @spirit_action_point = (level_coefficient * mood_efficient * manager_spirit_coefficient * horisugi_coefficient).round(1)
  end
end
