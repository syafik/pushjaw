class Feature < ActiveRecord::Base  
  attr_accessible :content, :name, :title, :url, :active, :type

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :content, :presence => true
  
end
