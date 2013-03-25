class ApplicationController < ActionController::Base
  protect_from_forgery

  if Rails.env.eql?("production")
    #http_basic_authenticate_with :name => "pushjaw", :password => "pushjaw"
  end
end
