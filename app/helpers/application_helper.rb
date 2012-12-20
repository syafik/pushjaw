module ApplicationHelper
  
  def show_team(teams)
    team_view =  content_tag :h3, "Our Teams"
    teams.each do |team|
      title = "#{team.name} as #{team.title}" 
      team_view += image_tag team.picture.url, :width=>89, :height=> 105, :class=>"tooltips",  :title=>title 
    end
    team_view 
  end
    
end
