class Request < ActiveRecord::Base
  attr_accessible :email, :name, :request, :subject
end
