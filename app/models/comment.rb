class Comment < ActiveRecord::Base
  attr_accessible :name ,:title, :address, :comment, :active
  
  validates_each :active do |record, attr, value|
  if value and Comment.count(:conditions => {:active => true}) >= 1
    record.errors.add attr, 'There can only be one TRUE row'
  end
end
end
