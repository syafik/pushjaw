class Image < ActiveRecord::Base

  attr_accessible :image, :team_id, :portfolio_id, :service_id
  has_attached_file :image, :styles => { :service_thumb => "120x80>", :team_thumb => "89x105>" }
  belongs_to :service, :inverse_of => :images
  belongs_to :team, :inverse_of => :image
  belongs_to :portfolio, :inverse_of => :image
end
