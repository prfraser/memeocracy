class ContactMailer < ApplicationMailer

	def contact_seller(from_email, question, user_name)
		@from_email = from_email
		@question = question
		@user_name = user_name

		mail(to: ENV['MY_EMAIL'], subject: "Memeocracy Question from: #{@from_email}.")
	end


end
