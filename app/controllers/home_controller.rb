class HomeController < ApplicationController
  
  def index
    @teams = Team.all
    @services = Service.last(5) 
    @home = Home.last
    @blog = Blog.last(2)
    @portfolios = Portfolio.all
    @comment = Comment.last
    @location = Location.last
    @res=GeoKit::Geocoders::GoogleGeocoder.geocode(@location.address)
    @about=About.last
  end
  
end
