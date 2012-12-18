class HomeController < ApplicationController
  def index
    @teams=Team.all
    @services = Service.last(5)
    @comment = Comment.last
  end
 
end
