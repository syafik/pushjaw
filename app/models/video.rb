class Video < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :video, :title, :image_id, :description
  has_one :image, :dependent => :destroy, :inverse_of => :video

  # for nested fields: (natural choice for a has_one association)

    attr_accessible :image_attributes
    accepts_nested_attributes_for :image, :allow_destroy => true

  # or if you want a dropdown select: 

    attr_accessible :image_id

    # Since ActiveRecord does not create setters/getters for has_one associations (why is beyond me), diy:
    def image_id
      self.image.try :id
    end
    def image_id=(id)
      self.image = Image.find_by_id(id)
    end
  
  has_attached_file :video, :styles => { 
    :medium => { :geometry => "800x600", :format => 'mp4', :rate => "48000" }
  }, :processors => [:ffmpeg]
end
