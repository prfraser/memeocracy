class PagesController < ApplicationController
  def home
    @product = Product.all
  end

  def about
  end

  def contact
  end

  def submit

  	from_email = params[:contact][:email]
  	user_name = params[:contact][:name]
  	question = params[:contact][:question]

  	@errors = []

  	@errors << 'Please enter your email.' if from_email.blank?
  	@errors << 'Please enter a question.' if user_name.blank?
  	@errors << 'Please enter a name.' if question.blank?

  	if @errors.empty?
  	ContactMailer.contact_seller(from_email, question, user_name).deliver_now
	  	render :success
	  else
	  	render :contact
	  end
  end
end
