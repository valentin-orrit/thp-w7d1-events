class AttendanceMailer < ApplicationMailer
  default from: 'admin@events.com'

  def attendance_email(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to the event!')
  end
end
