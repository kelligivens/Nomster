class NotificationMailer < ApplicationMailer
   default from: "no-reply@nomsterapp.com"
  
  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    
    mail(to: @place_owner.email,
         subject: "A comment has been added to #{@place.name}")
  end
  
  def photo_added(photo)
    @place = photo.place
    @place_owner = @place.user
    
    mail(to: @place_owner.email,
         subject: "A photo has been added to #{@place.name}")
  end
end
