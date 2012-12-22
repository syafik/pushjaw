class Image < ActiveRecord::Base
  attr_accessible :image, :service_id
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  belongs_to :service, :inverse_of => :images
  belongs_to :team, :inverse_of => :image
  belongs_to :portfolio, :inverse_of => :image
end
