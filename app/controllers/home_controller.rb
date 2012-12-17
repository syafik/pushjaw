class HomeController < ApplicationController
  def index
    @teams = Team.all
    @comment = Comment.last
    @portfolios = Portfolio.all 
  
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams }
      
    end
    
  end
end
