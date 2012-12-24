module ApplicationHelper
  
  def show_team(teams) 
#    teams.each do |team|
#      #title = "#{team.name} as #{team.title}"
#      #team_view = image_tag team.image.image.url, :width=>89, :height=> 105, :class=>"tooltips tooltips-bottom", :title_team=>title, :title=>"#{team.content}"
#      res << "#{team.name} as #{team.title}" + "#{image_tag team.image.image.url, :width=>89, :height=> 105, :class=>"tooltips tooltips-bottom", :title_team=>team.title, :title=>"#{team.content}"}".html_safe
#    end
       teams.collect {|team| "#{image_tag team.image.image.url, :width=>89, :height=> 105, :class=>"tooltips", :title=>"#{team.name} as #{team.title}" + "<br />" + "#{team.content}"}"}.join(' ').html_safe
  end
  
end
