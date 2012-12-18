class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :image, :service_id, :portfolio_id
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  belongs_to :service
end
