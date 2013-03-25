class About < Feature
  validates :content, :presence => true

  before_update :make_false  
  before_create :make_false
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    self.active == false || 
      About.has_active.size == 0 || 
      ( About.has_active.size == 1 && !self.active_changed?)
  end
  
end
