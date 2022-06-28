module Admin
  class AdminController < ActionController::Base
    include SessionsHelper

    layout "admin_application"

    before_action :check_admin

    def check_admin
      redirect_to root_path if current_user.blank? || current_user.user?
    end
  end
end
