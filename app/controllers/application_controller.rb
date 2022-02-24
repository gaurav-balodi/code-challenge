class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    current_user.admin? ? admin_pages_dashboard_path : dashboard_path
  end
end
