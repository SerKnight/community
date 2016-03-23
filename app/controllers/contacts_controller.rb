class ContactsController < ApplicationController
	include ApplicationHelper

	def new
	  
	end

	def create

		@contact = Contact.new(contact_params)

		if @contact.save
			ApplicationMailer.contact_confirmation_email(@contact.id).deliver
	    ApplicationMailer.team_notification(@contact.id).deliver
			action = 'create.js.erb'		
		else
			flash.now[:error] = @contact.errors.full_messages	
			action = 'error.js.erb'		 
		end

    respond_to do |format|
    	format.js { render :action => action, :layout => false}
    end
	end


	private

		def contact_params
			params.require(:contact).permit(:email, :name, :message, :type)

		end 	

end
