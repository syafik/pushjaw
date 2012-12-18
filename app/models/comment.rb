class Comment < ActiveRecord::Base
  attr_accessible :name ,:title, :address, :comment
end
