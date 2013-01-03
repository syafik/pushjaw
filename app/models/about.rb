class About < Feature
  # attr_accessible :title, :body
  

validates :content, presence: true

  validates_each :active do |record, attr, value|
  if value and About.count(:conditions => {:active => true}) >= 1
    record.errors.add attr, 'There can only be one TRUE row'
  end
end
end
