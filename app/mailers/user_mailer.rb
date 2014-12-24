class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://brad-blocmarks.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to my site')
  end

  
end
