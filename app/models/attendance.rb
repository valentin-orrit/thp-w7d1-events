class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

    #send email after creation
    after_create :attendance_send

    def attendance_send
      UserMailer.attendance_email(self.user_id).deliver_now
    end
end
