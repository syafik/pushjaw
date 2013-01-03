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
  
  validates_each :address do |record, attr, value|
  if value and Location.count >= 1
    record.errors.add attr, 'There can only be one record'
  end
end

end
