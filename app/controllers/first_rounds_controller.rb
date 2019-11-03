class FirstRoundsController < ApplicationController
  def new
    @player = Player.find(params[:player_id])
  end

  def create
  end
end
