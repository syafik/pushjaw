class Portfolio < ActiveRecord::Base
  attr_accessible :description, :image, :projectname
  has_attached_file :image, :styles => { :medium => "641x450>",:thumb => "100x100>" }
end
