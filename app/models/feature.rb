class Feature < ActiveRecord::Base
  attr_accessible :content, :name, :title, :picture


  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
