class HomeController < ApplicationController
  
  def index
    @teams = Team.page(params[:page]).per(10)
    @services = Service.where(:active=>true).last(5) 
    @home = Home.last
    @blog = Blog.last(2)
    @portfolios = Portfolio.where(:active=>true)
    @comment = Comment.where(:active=>true).last
    @location = Location.last
    @res=GeoKit::Geocoders::GoogleGeocoder.geocode(@location.address)
    @about=About.last
    @video= Video.last
  end

end
