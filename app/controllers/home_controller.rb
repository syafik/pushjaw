class HomeController < ApplicationController
  
  def index
    @teams = Team.page(params[:page]).per(10)
    @services = Service.where(:active => true).first(5) 
    @home = Home.where(:active => true).first
    @blog = Blog.where(:active => true).first(2)
    @portfolios = Portfolio.where(:active => true)
    @comment = Comment.where(:active => true).first
    @location = Location.where(:active => true).first
    @res = GeoKit::Geocoders::GoogleGeocoder.geocode(@location.try(:address))
    @videos = Video.where(:active => true).first(3)
    @about = About.where(:active => true).first
  end

end
