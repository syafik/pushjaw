class ContactNotifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #   en.contact_notifier.received.subject
  
  def received(home)
    @home = home

    mail to: home.email, subject: 'your contact'
  end
  
end
