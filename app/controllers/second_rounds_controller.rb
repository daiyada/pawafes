class SecondRoundsController < ApplicationController
  def new
    @player = Player.find(params[:player_id])
    team = FirstRoundTeam.all
    @FirstRoundTeams = team.pluck(:name)
    manager = Manager.all
    @managers = manager.pluck(:name)
  end

  def create
  end

  def lose
  end
end
