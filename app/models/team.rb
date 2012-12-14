class Team < ActiveRecord::Base
  attr_accessible :name, :title, :avatar
  has_attached_file :avatar, :styles => { :thumb => "100x100>" }
 
end
