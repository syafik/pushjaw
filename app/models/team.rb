class Team < Feature
  # attr_accessible :title, :body
  has_many :images, :as => :imageable
end
