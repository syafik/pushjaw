class ServiceImage < ActiveRecord::Base
  attr_accessible :image, :service_id
  
  belongs_to :service
  has_attached_file :image, :styles => { :medium => "150x150>" }
end
