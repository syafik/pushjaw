class Location < ActiveRecord::Base
  attr_accessible :address
  
  acts_as_mappable
  before_validation :geocode_address, :on => :create

end
