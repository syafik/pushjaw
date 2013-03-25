[About, Home, Service, Portfolio, Blog, Video, Comment, Location, User, Team, Image].each(&:delete_all)

abouts = [
  ["about one", "Save videos to watch later, watch recommendations just for you, or subscribe to get ... See videos shared by your friends across all your social networks", true],
  ["about two", "watch later, watchs shared by your friends across all your social networks", false]]

abouts.each do |about|
  About.create!(:name => about[0], :content => about[1], :active => about[2])
end

Comment.create!(name: "Andreas Kisserk", title: "Developer in StablesConfusion", address: "CA", comment: "Lorem Ipsum is simply dummy text of the printing and typesetting Lorem Ipsum has been the industry's standard dummy text ever 1500s, when an unknown printer took a galley of type and scrammake a type specimen book", active: true)
Comment.create!(name: "Dani", title: "Developer in Cijagra", address: "INA", comment: "Lorem Ipsum is simply dummy text of the printing and typesetting Lorem Ipsum has been the industry's standard dummy text ever 1500s, when an unknown printer took a galley of type and scrammake a type specimen book", active: false)
  
Location.create!(address: "jln mig 3 no 1", mobile_phone: "+6281809466884", phone: "+622260001425", city: "Cimahi, West Java - Indonesia", active: true, lat: -6.924984, lng: 107.552818)

15.times do
  team = Team.create!(name: "john",
    title: "web developer",
    content: "hello my name is john, i am is a web developer")
    
  Image.create!(team_id: team.id,
    image: open(Rails.root.join('app/assets/images/sample2.png')))
end

User.create!(email: 'admin@pushjaw.com', password: 'password')

print 'seeding database'
5.times.each_with_index do |home, index|
  home = Home.create!(:name => index,
    :content => "Lorem Ipsum is simply dummy text of the
                               printing and typesetting industry. Lorem Ipsum has been the industry's 
                               standard dummy text ever since the 1500s, when an unknown printer took a 
                               galley of type and scrambled it to make a type specimen book. It has survived 
                               not only five centuries#",
    :active => false)
  print '.'
end

Home.last.update_attribute("active", true)

10.times do |service|
  service = Service.create!(:name => "Web Developer",
    :content => "Lorem Ipsum is simply dummy text of the 
                               printing and typesetting industry. Lorem Ipsum has been the industry's 
                               standard dummy text ever since the 1500s, when an unknown printer took a 
                               galley of type and scrambled it to make a type specimen book. It has survived 
                               not only five centuries",
    :active => false)  
  print '.'
  Image.create!(:service_id => service.id, :image => open(Rails.root.join('app/assets/images/pushjawcompany.png')))
end

#update attibute active become true
Service.limit(5).each do |service|
  service.update_attribute("active", true)
end

5.times do |portfolio|
  portfolio = Portfolio.create!(:name => "Pushjaw",
    :content => "Pushjaw",
    :url => "http://pushjaw.com",
    :active => true)
  print '.'
  Image.create!(:portfolio_id => portfolio.id, :image => open(Rails.root.join('app/assets/images/pushjawcompany.png')))  
end

5.times do |blog|
  blog = Blog.create!(:content => "Pushjaw Pushjaw Pushjaw Pushjaw Pushjaw Pushjaw Pushjaw Pushjaw",
    :name => "Pushjaw",
    :active => false)
  print '.'
end

Blog.limit(2).each do |blog|
  blog.update_attribute("active", true)
end

video = Video.create!(
  :description => "Lorem Ipsum is simply dummy text of the
                     printing and typesetting industry. Lorem Ipsum 
                      has been the industry's standard dummy text ever
                      since the 1500s, when an unknown printer took a galley o
                     f type and scrambled it to make a type specimen book. It",
  :title => "Pushjaw",
  :video => open(Rails.root.join('app/assets/video/test.flv')),
  :active => true)