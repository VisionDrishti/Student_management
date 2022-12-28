# Preview all emails at http://localhost:3000/rails/mailers/curd_notification_mailer
class CurdNotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/curd_notification_mailer/create_notification
  def create_notification
    CurdNotificationMailer.create_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/curd_notification_mailer/update_notification
  def update_notification
    CurdNotificationMailer.update_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/curd_notification_mailer/delete_notification
  def delete_notification
    CurdNotificationMailer.delete_notification
  end

end
