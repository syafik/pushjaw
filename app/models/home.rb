class Home < Feature
  validates :content, :presence => true
  
  before_update :make_false  
  before_create :make_false
  # attr_accessible :title, :body
 
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    self.active == false || 
      Home.has_active.size == 0 || 
      ( Home.has_active.size == 1 && !self.active_changed?)
  end
  
end
