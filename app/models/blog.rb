class Blog < Feature
  # attr_accessible :title, :body
  extend FriendlyId
  friendly_id :title
  validates :content,:title, presence: true
  
  validates_each :active do |record, attr, value|
  if value and Blog.count(:conditions => {:active => true}) >= 2
    record.errors.add attr, 'There can only be two TRUE row'
  end
end

end
