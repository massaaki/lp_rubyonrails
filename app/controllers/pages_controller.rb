class PagesController < ApplicationController
  def landing
  end

  def info_contact
	respond_to do |format|
	  format.js { render nothing: true } 
		contact = List.new
		contact.email = params[:email].downcase
		contact.type_user = "lead frio"	
		if contact.save
			begin
				Gibbon::Request.api_key = ENV['API_MAILCHIMP']
				Gibbon::Request.timeout = 15
				gibbon = Gibbon::Request.new

				#Make a member_id key as same algorith as mailchimp
				member_id = Digest::MD5.hexdigest(contact.email)

				#Check if member exists update them
				if gibbon.lists('3e6b528408').members(member_id).retrieve 
					gibbon.lists("3e6b528408").members(member_id).update(body: {email_address: contact.email, status: "subscribed",interests: {"5e4894f7a1": true} })
				end

			rescue
				gibbon.lists("3e6b528408").members.create(body: {email_address: contact.email, status: "subscribed", interests: {"b1cf04f75a": true,"78a68d6bef": true, "5e4894f7a1": true} })
			end
			# WelcomeLandingRegistration.delay.welcome(contact.email)
			flash[:message] = 'Parabéns! Prepare-se para o dia 14/Nov, alguns dias antes enviaremos o seu acesso para o e-mail cadastrado'
		else 
			flash[:message] = 'Formato Invalido'
		end
	end	

  end
end

