class Video < ActiveRecord::Base
  attr_accessible :video, :title, :description, :active

  validates :video, :title, :description, :presence => true
  
  validates_attachment_content_type :video,
    :content_type => ['video/x-flv'],
    :message => "Sorry, right now we only support FLV video",
    :if => :is_type_of_video?

  before_update :make_false  
  before_create :make_false
  
  scope :has_active, :conditions => {:active => true}
  
  def make_false
    errors.add :active, "There can only be six TRUE row"
    self.active == false || 
      Video.has_active.size == 0 || 
      Video.has_active.size == 1 || 
      Video.has_active.size == 2 || 
      Video.has_active.size == 3 || 
      Video.has_active.size == 4 || 
      Video.has_active.size == 5 || 
      ( Video.has_active.size == 6 && !self.active_changed?)
  end
  
  has_attached_file :video, :styles => { 
    :medium => { :geometry => "800x600", :format => 'flv'},
    :thumb => { :geometry => "800x600#", :format => 'jpg', :time => 10 }
  }, :processors => [:ffmpeg]
  
  protected
  def is_type_of_video?
    video.content_type =~ %r(video)
  end

end
