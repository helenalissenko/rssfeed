class UserMailer < ActionMailer::Base
  default from: 'helena.lissenko@gmail.com'
 
  def welcome_email()
    mail(to: "esziger@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
