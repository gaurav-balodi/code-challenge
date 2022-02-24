class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :welcome

  def welcome
  end

  def dashboard
    current_user.set_payment_processor :stripe

    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment", line_items: "price_1KWkmKSHWQqRGCm83cXb2rPP")
  end

  def send_sms
  	#TODO use twilio service here
  	if current_user.credited_sms > 0
  		current_user.decrement_sms!
  		redirect_back(fallback_location: dashboard_path,
  			notice: "You SMS has been sent")
  	else
  		redirect_back(fallback_location: dashboard_path,
  			alert: "You don't have sufficient SMS credits available in your account. 
  			Please purchase SMS for your account.")
  	end
  end

  def purchase_sms
  	#TODO implement stripe
  end
end
