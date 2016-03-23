class ApplicationMailer < ActionMailer::Base
	  default from: "info@adventure-made.com"


  def team_notification(contact_id)
    @contact = Contact.find(contact_id)
    mail(to: 'info@advlo.com', subject: 'New Application')
  end

  def contact_confirmation_email(contact_id)
  	@contact = Contact.find(contact_id)
  	mail(to: @contact.email, subject: 'Lets get Adventure Made')
  end


end
