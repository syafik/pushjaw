class Feature < ActiveRecord::Base
  attr_accessible :content, :name, :title, :url, :active
end
