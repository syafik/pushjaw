class Comment < ActiveRecord::Base
  attr_accessible :address, :comment, :name, :title
end
