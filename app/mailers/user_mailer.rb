class UserMailer < ApplicationMailer
  default from: 'vorrit@gmail.com'

  def welcome_email(user)
    @user = user

    @url = 'https://events240506-fragrant-frog-1429.fly.dev/'

    mail(to: @user.email, subject: 'Welcome!')
  end
end
