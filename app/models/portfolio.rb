class Portfolio < Feature
  # attr_accessible :title, :body
  
  validates :name, :content, :title, :url, presence: true
   
  has_one :image, :dependent => :destroy, :inverse_of => :portfolio

  attr_accessible :image_attributes
  accepts_nested_attributes_for :image, :allow_destroy => true
  attr_accessible :image_id

  def image_id
    self.image.try :id
  end
  def image_id=(id)
    self.image = Image.find_by_id(id)
  end
  
end
