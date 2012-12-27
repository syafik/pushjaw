class Service < Feature
  # attr_accessible :title, :body
  has_many :images, :dependent => :destroy, :inverse_of => :service
  
  accepts_nested_attributes_for :images, :allow_destroy => true
    attr_accessible :images_attributes, :allow_destroy => true
    attr_accessible :image_ids
    
  validates_each :active do |record, attr, value|
  if value and Service.count(:conditions => {:active => true}) > 0
    record.errors.add attr, 'There can only be one TRUE row'
  end
end
end
