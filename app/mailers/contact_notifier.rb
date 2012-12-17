class ContactNotifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #   en.contact_notifier.received.subject
  
  def received
    mail to: 'adika.pj@gmail.com', subject: 'your contact'
  end
  
end
