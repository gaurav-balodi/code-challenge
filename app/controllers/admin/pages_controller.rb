class Admin::PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin_access?

  def dashboard
  end

  def payment_histories
    @payment_histories = PaymentHistory.all
  end

  private
  def check_admin_access?
    redirect_to(dashboard_path, alert: "You are not authorized to access this page") unless current_user.admin?
  end
end