class UsersController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @player = Player.where(user_id: current_user&.id)
  end

  private
  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end
