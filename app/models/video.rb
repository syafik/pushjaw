class Video < ActiveRecord::Base

  attr_accessible :video, :title, :image_id, :description, :active
  has_one :image, :dependent => :destroy, :inverse_of => :video

  validates_length_of :description, :maximum => 100
  
  validates_attachment_content_type :video,
    :content_type => ['video/mp4'],
    :message => "Sorry, right now we only support MP4 video",
    :if => :is_type_of_video?

  validates_each :active do |record, attr, value|
    if value and Video.count(:conditions => {:active => true}) >= 3
      record.errors.add attr, 'There can only be 3 TRUE row'
    end
  end
  
  attr_accessible :image_attributes
  accepts_nested_attributes_for :image, :allow_destroy => true 

  attr_accessible :image_id

  def image_id
    self.image.try :id
  end
  def image_id=(id)
    self.image = Image.find_by_id(id)
  end
  
  has_attached_file :video, :styles => { 
    :medium => { :geometry => "800x600", :format => 'mp4', :rate => "48000" }
  }, :processors => [:ffmpeg]
  
  protected
  def is_type_of_video?
    video.content_type =~ %r(video)
  end

end
