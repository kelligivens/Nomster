class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email
  
  def send_photo_email
      NotificationMailer.photo_added(self).deliver_now
  end
end

