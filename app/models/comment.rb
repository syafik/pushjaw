class Comment < ActiveRecord::Base
  
  before_update :check
  before_create :check
 
  attr_accessible :name ,:title, :address, :comment, :active
 
  scope :has_active, :conditions => {:active => true}
      
    def check
      errors.add :active, "There can only be one TRUE row"
      self.active == false || 
        Comment.has_active.size == 0 || 
        ( Comment.has_active.size == 1 && !self.active_changed?)
    end
    
  end 


