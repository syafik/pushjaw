class Service < ActiveRecord::Base
  attr_accessible :service, :description
  has_many :service_images, :dependent => :destroy
end
