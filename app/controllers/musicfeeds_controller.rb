class MusicfeedsController < ApplicationController

  def index
    render json: Musicfeed.all
  end


  def show
    render json: Musicfeed.find(params[:id])
  end

end
