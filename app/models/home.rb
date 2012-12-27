class Home < Feature
  # attr_accessible :title, :body
  validates_each :active do |record, attr, value|
  if value and Home.count(:conditions => {:active => true}) >= 1
    record.errors.add attr, 'There can only be one TRUE row'
  end
end
end
