class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: current_user
  end

  def create
    user = User.create!( user_params )
    user.save()
  end

  private
  def user_params
    params.require(:user).permit([ :email, :password, :password_confirmation ])
  end


end