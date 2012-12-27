class Blog < Feature
  # attr_accessible :title, :body
  
  validates_each :active do |record, attr, value|
  if value and Blog.count(:conditions => {:active => true}) >= 2
    record.errors.add attr, 'There can only be two TRUE row'
  end
end
end
