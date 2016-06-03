class ApplicationMailer < ActionMailer::Base
  default from: "apply@madebyadventure.com"


  def team_notification(contact_id)
    @contact = Contact.find(contact_id)
    mail(to: 'info@advlo.com', subject: 'New Application')
  end

  def contact_confirmation_email(contact_id)
  	@contact = Contact.find(contact_id)
  	mail(to: @contact.email, subject: "Message from AdventureMade")
  end

  def trip_interest_signup(user_id)
  	@user = User.find(user_id)
  	mail(to: 'info@advlo.com', subject: 'New trip interest')
  end

end
