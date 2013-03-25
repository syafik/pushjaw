class HomeController < ApplicationController
  
  def index
    @teams = Team.all
    @services = Service.where(:active => true)
    @home = Home.where(:active => true).first
    @blog = Blog.where(:active => true).first
    @portfolios = Portfolio.where(:active => true)
    @comment = Comment.where(:active => true).first
    @location = Location.where(:active => true).first
    @videos = Video.where(:active => true)
    @about = About.where(:active => true).first
  end

  def video
    @video = Video.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

end
