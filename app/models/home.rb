class Home < Feature
  # attr_accessible :title, :body
  validates :content, presence: true
 
  #  validates_each :active do |record, attr, value|
  #    if value and Home.count(:conditions => {:active => true}) >= 1
  #      record.errors.add attr, 'There can only be one TRUE row'
  #    end
  #  end

#  after_update :non_active_record
#  
#  
#  def non_active_record
# 
#    count = Home.where(active: true).count
#    
#    if(count > 1)
#      self.update_attribute("active", false)
#      
#    else
#      self.update_attribute("active", true)
#    end
#    
#  end
end
