class JamamojisController < ApplicationController

  before_action :authenticate_user!

  def index
    jamamojis = Jamamoji.all  
    render :json => jamamojis.to_json()
  end

  def show
    jamamoji = Jamamoji.find(params[:id])
    render :json => jamamoji.to_json()
  end

  def update
    jamamoji = Jamamoji.find(params[:id])
    if jamamoji.update_attributes(jamamoji_params)
      render json: jamamoji , status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  private
  def jamamoji_params
    params.require(:jamamoji).permit([:icon, :name, :food, :energy, :waste, :alive, :ill, :happy, :hungry, :damage, :health, :special, :opponent_bonus, :block, :opponent_special ])
  end


end