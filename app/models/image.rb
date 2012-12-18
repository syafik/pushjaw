class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :imageable, :polymorphic => true
  attr_accessible :image, :imageable_id, :imageable_type
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
