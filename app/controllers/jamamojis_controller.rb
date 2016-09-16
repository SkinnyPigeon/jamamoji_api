class JamamojisController < ApplicationController

  def index
    jamamojis = Jamamoji.all  
    render :json => jamamojis.to_json()
  end

end