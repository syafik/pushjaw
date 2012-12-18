class Notifier < ActionMailer::Base
 default from: "from@example.com"
  
  def received(email)
    @contact = email
    mail to: email.email, subject: 'your contact'
  end
end
