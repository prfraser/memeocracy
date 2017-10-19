class ChargesController < ApplicationController
	def new
	end

	def destroy
    current_buyer.bags.destroy_all
  end

	def create
	  # Amount in cents
	  @bags = current_buyer.bags
	  @amount = (@bags.sum(:price) * 100).to_i

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	  to_email = current_buyer.email
	  items = @bags.sum(:quantity)
	  emailamount = @bags.sum(:price)
	  PurchaseMailer.purchase_confirmation(to_email, emailamount, items).deliver_now
	  destroy

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end
end
