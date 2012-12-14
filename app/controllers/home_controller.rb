class HomeController < ApplicationController
  def index
    @teams = Team.all
    @profile = Profile.last
    @comment = Comment.last
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams }
    end
    
  end
end
