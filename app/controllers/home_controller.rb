class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :welcome
  before_action :redirect_to_admin_dashboard, only: :dashboard

  def welcome
  end

  def dashboard
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

  private
  def redirect_to_admin_dashboard
  	redirect_to(:admin_pages_dashboard) if current_user.admin?
  end
end
