class HomeController < ApplicationController
  def index
    @teams = Team.all
    @services = Service.last(5) 
    @home = Home.last
    @blog = Blog.last(2)
    @portfolios = Portfolio.all
  end
end
