class ContactMailer < ApplicationMailer

  default from: ENV["GMAIL_EMAIL"]
  layout "mailer"
  def sample_email(name, phone, email, message)
      @name = name
      @phone = phone
      @email = email
      @message = message
      mail(to: ENV["GMAIL_EMAIL"], subject: 'TextMeABook Email')
    end

end
