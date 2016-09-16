class JamamojisController < ApplicationController

  before_action :authenticate_user!

  def index
    jamamojis = Jamamoji.all  
    render :json => jamamojis.to_json()
  end

end