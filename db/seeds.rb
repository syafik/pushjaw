# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
About.create(content: "Save videos to watch later, watch recommendations just for you, or subscribe to get ... See videos shared by your friends across all your social networks — all in ...", active: true)
About.create(content: "watch later, watchs shared by your friends across all your social networks — all in ...", active: false)

Comment.delete_all
Comment.create(name: "Andreas Kisserk", title: "Developer in StablesConfusion", address: "CA", comment: "Lorem Ipsum is simply dummy text of the printing and typesetting Lorem Ipsum has been the industry's standard dummy text ever 1500s, when an unknown printer took a galley of type and scrammake a type specimen book..", active: true)
Comment.create(name: "Dani", title: "Developer in Cijagra", address: "INA", comment: "Lorem Ipsum is simply dummy text of the printing and typesetting Lorem Ipsum has been the industry's standard dummy text ever 1500s, when an unknown printer took a galley of type and scrammake a type specimen book..", active: false)\
  
Location.delete_all
Location.create(address: "jln mig 3 no 1", mobile_phone: "+6281809466884", mobile: "+622260001425", city: "Cimahi, West Java - Indonesia")

Team.delete_all
Image.delete_all
15.times do
  team = Team.create(name: "john", 
    title: "web developer",
    content: "hello my name is john, i am is a web developer")
    
  Image.create(team_id: team.id,
  image: open(Rails.root.join('app/assets/images/sample2.png')))
end

User.delete_all
User.create(email: 'pushjaw@pushjaw.com', password: 'pushjaw123456')



print 'seeding database'
10.times do |home|
  home = Home.create :content => "Lorem Ipsum is simply dummy text of the 
                               printing and typesetting industry. Lorem Ipsum has been the industry's 
                               standard dummy text ever since the 1500s, when an unknown printer took a 
                               galley of type and scrambled it to make a type specimen book. It has survived 
                               not only five centuries#",
    :active => false
  print '.'
end

10.times do |service|
  service = Service.create!(:name => "Web Developer",
    :content => "Lorem Ipsum is simply dummy text of the 
                               printing and typesetting industry. Lorem Ipsum has been the industry's 
                               standard dummy text ever since the 1500s, when an unknown printer took a 
                               galley of type and scrambled it to make a type specimen book. It has survived 
                               not only five centuries",
    :title => "Web Developer",
    :active => false)  
  print '.'
  Image.create!(:service_id => service.id, :image => open(Rails.root.join('app/assets/images/pushjawcompany.png')))
end

10.times do |portfolio|
  portfolio = Portfolio.create!(:name => "Pushjaw",
    :content => "Pushjaw",
    :title => "Pushjaw",
    :url => "http://pushjaw.com",
    :active => false)
  print '.'
  Image.create!(:portfolio_id => portfolio.id, :image => open(Rails.root.join('app/assets/images/pushjawcompany.png')))  
end

10.times do |blog|
  blog = Blog.create!(:content => "Pushjaw",
                      :title => "Pushjaw",
                      :active => false)
    print '.'
end

3.times do |video|
  video = Video.create!(
    :description => "Pushjaw",
    :title => "Pushjaw",
    :video => open(Rails.root.join('app/assets/video/11.mp4')),  
    :active => false)
  print '.'
end

