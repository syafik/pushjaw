class Notifier < ActionMailer::Base
 default from: "from@example.com"
  
  def received
    mail to: 'adikahavittia@gmail.com', subject: 'your contact'
  end
end
