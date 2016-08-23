class Trybsmailer < ActionMailer::Base
	default from: "visitor@tezlogistics.com"

	def sample_email(user)
 
	 	@user = user
	 
	 	mail(to: @user.email, subject: 'Sample Email')
	end
end
