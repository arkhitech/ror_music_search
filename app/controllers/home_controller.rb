class HomeController < ApplicationController
  def index
  end
  
  def search_musicfeeds
    
    @search_parameter=params[:search]
    @musicfeed_search_results=Musicfeed.search(params[:search], :ranker => :proximity, :match_mode => :any)
    
    respond_to do |format|
          format.html {@musicfeed_search_results}
          format.json {render  json: Musicfeed.search(params[:search], :ranker => :proximity, :match_mode => :any)}
          format.all  {render :nothing => true, :status => :unprocessable_entity}
    end
  end
#       @musicfeed_search_results = Musicfeed.search(params[:search], :ranker => :proximity, :match_mode => :any)
#       render json: Musicfeed.search(params[:search], :ranker => :proximity, :match_mode => :any)
  
end
