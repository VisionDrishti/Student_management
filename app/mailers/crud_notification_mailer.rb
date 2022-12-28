class CrudNotificationMailer < ApplicationMailer


  def create_notification(object)
  @object = object 
  @object_count = object.class.count
  mail to: 'drishtiverma31@gmail.com', subject: "new entry for #{object.class} has been created  "
  end 
 
  def update_notification
   
  end

  
  def delete_notificatiom

  end
end
