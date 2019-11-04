class FirstRoundsController < ApplicationController
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
    @player = Player.find(params[:player_id])
    @firstround = FirstRound.find(params[:player_id])
    participation = Participation.all
    @participation = participation.pluck(:name)
    # ポイントの算出
    @max_point = 150
    @team_point = FirstRoundTeam.find_by(name: @firstround.opponent).base_point
    @manager_muscle_coefficient = Manager.find_by(name: @firstround.supporter).muscle_coefficient
    @manager_agile_coefficient = Manager.find_by(name: @firstround.supporter).agile_coefficient
    @manager_technique_coefficient = Manager.find_by(name: @firstround.supporter).technique_coefficient
    @manager_change_coefficient = Manager.find_by(name: @firstround.supporter).change_coefficient
    @manager_spirit_coefficient = Manager.find_by(name: @firstround.supporter).spirit_coefficient
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
    @muscle_action_point = (@level_coefficient * @manager_muscle_coefficient * @horisugi_coefficient).round(1)
    @muscle_total_point = @muscle_base_point + @muscle_action_point

    @agile_base_point = @team_point
    @agile_action_point = (@level_coefficient * @manager_agile_coefficient * @horisugi_coefficient).round(1)
    @agile_total_point = @agile_base_point + @agile_action_point

    @technique_base_point = @team_point
    @technique_action_point = (@level_coefficient * @manager_technique_coefficient * @horisugi_coefficient).round(1)
    @technique_total_point = @technique_base_point + @technique_action_point

    @change_base_point = @team_point
    @change_action_point = (@level_coefficient * @manager_change_coefficient * @horisugi_coefficient).round(1)
    @change_total_point = @change_base_point + @change_action_point

    @spirit_base_point = @team_point
    @spirit_action_point = (@level_coefficient * @manager_spirit_coefficient * @horisugi_coefficient).round(1)
    @spirit_total_point = @spirit_base_point + @spirit_action_point
  end

  def record
  end

  private
  def first_round_params
    params.permit(:opponent, :supporter, :horisugi_doll, :player_id)
  end
end
