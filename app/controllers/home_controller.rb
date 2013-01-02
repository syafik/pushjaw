class HomeController < ApplicationController
  
  def index
    @teams = Team.page(params[:page]).per(10)
    @services = Service.where(:active => true).first(5) 
    @home = Home.where(:active => true).first
    @blog = Blog.where(:active => true).first(2)
    @portfolios = Portfolio.where(:active => true)
    @comment = Comment.where(:active => true).first
    @location = Location.first
    @res = GeoKit::Geocoders::GoogleGeocoder.geocode(@location.address)
    @video = Video.last
    @about = About.where(:active => true).first
    @video_images = Video.last(3)
  end

end
