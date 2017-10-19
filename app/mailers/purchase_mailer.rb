class PurchaseMailer < ApplicationMailer

	def purchase_confirmation(to_email, amount, items)
		@to_email = to_email
		@amount = amount
		@items = items

		mail(to: @to_email, subject: "Memeocract - Purchase Confirmation")
	end

end
