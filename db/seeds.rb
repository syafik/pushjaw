# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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