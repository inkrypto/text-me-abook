class ContactMailer < ApplicationMailer

  default from: ENV["gmail_username"]
  layout "mailer"
  def sample_email(name, phone, email, message)
      @name = name
      @phone = phone
      @email = email
      @message = message
      mail(to: ENV["gmail_username"], subject: 'TextMeABook Email')
    end

end
