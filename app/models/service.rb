class Service < Feature
  
  validates :name, :content, :title, presence: true
  has_many :images, :dependent => :destroy, :inverse_of => :service
  
  accepts_nested_attributes_for :images, :allow_destroy => true
    attr_accessible :images_attributes, :allow_destroy => true
    attr_accessible :image_ids
    
end
