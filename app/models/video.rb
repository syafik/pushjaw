class Video < ActiveRecord::Base

  attr_accessible :video, :title, :description, :active

  validates :video, :title, :description, :presence => true
  
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
  
  has_attached_file :video, :styles => { 
    :medium => { :geometry => "800x600", :format => 'mp4', :rate => "48000" },
    :thumb => { :geometry => "800x600#", :format => 'jpg', :time => 50 }
  }, :processors => [:ffmpeg]
  
  protected
  def is_type_of_video?
    video.content_type =~ %r(video)
  end

end
