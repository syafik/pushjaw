class Location < ActiveRecord::Base
  attr_accessible :address, :phone, :mobile_phone, :city, :active, :lat, :lng
  validates :address, :city, :presence => true
  
  before_update :make_false  
  before_create :make_false
  
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    errors.add :active, "There can only be one TRUE row"
    self.active == false || 
      Location.has_active.size == 0 || 
      ( Location.has_active.size == 1 && !self.active_changed?)
  end

end
