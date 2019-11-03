class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.blank?
      redirect_to new_players_path
    else
      @player.save
      redirect_to new_first_round_path
    end
  end

  private
  def player_params
    params.permit(:name, :position, :dominant_throw, :dominant_batting, :level).merge(user_id: current_user.id)
  end
end
