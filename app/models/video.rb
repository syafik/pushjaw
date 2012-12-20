class Video < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :video
  has_attached_file :video, :styles => { 
    :medium => { :geometry => "640x480", :format => 'mp4' },
    :medium => { :geometry => "640x480", :format => 'flv' }
  }, :processors => [:ffmpeg]
end
