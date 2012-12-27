class BlogController < ApplicationController
  def index
    @blog = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end
end
