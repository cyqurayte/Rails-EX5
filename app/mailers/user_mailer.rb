class UserMailer < ApplicationMailer

	default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'cherian.grundmann@gmail.com',
         subject: "New message from #{name}")
  end

end
