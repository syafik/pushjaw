class Service < Feature
  has_many :images, :dependent => :destroy, :inverse_of => :service
  
  accepts_nested_attributes_for :images, :allow_destroy => true
  attr_accessible :images_attributes, :allow_destroy => true
  attr_accessible :image_ids
    
  before_update :make_false  
  before_create :make_false
  
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    errors.add :active, "There can only be five TRUE row"
      self.active == false || 
        Service.has_active.size == 0 ||
        Service.has_active.size == 1 ||
        Service.has_active.size == 2 ||
        Service.has_active.size == 3 ||
        Service.has_active.size == 4 ||
      ( Service.has_active.size == 5 && !self.active_changed?)
end
    
end
