class Location < ActiveRecord::Base
  attr_accessible :address, :phone, :mobile_phone, :city
  validates :address, :city, presence: true
  
  acts_as_mappable
  before_validation :geocode_address, :on => :create

  private
  def geocode_address
    geo=Geokit::Geocoders::MultiGeocoder.geocode ('jln mig 3 cimahi')
    errors.add(:address, "Could not Geocode address") if !geo.success
    self.lat, self.lng = geo.lat,geo.lng if geo.success
  end
  
  before_update :make_false  
  before_create :make_false
  
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    self.active == false || 
      Location.has_active.size == 0 || 
      ( Location.has_active.size == 1 && !self.active_changed?)
  end

end
