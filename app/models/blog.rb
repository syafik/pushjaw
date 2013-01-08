class Blog < Feature
  # attr_accessible :title, :body
  extend FriendlyId
  friendly_id :title
  validates :content,:title, :presence => true
  
  before_update :make_false  
  before_create :make_false
  
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    errors.add :active, "There can only be two TRUE row"
    self.active == false || 
      Blog.has_active.size == 0 || 
      Blog.has_active.size == 1 || 
      ( Blog.has_active.size == 2 && !self.active_changed?)
  end

end
