class EventMailer < ApplicationMailer

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

  # Письмо о новом комментарии на заданный email
  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email, subject: "Новый комментарий @ #{event.title}"
  end

  def photo_notification(photo, email)
    @event = photo.event
    @photo = photo

    attachments[@photo.photo.thumb.file.filename] = File.read(@photo.photo.thumb.file.file)
    mail to: email, subject: "Новое изображение на #{@event.title}"
  end
end
