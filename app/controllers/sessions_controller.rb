class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    return log_in_for(user) if user.present? && user.authenticate(params[:session][:password])

    flash.now[:danger] = "Invalid email/password combination"
    render "new"
  end

  def destroy
    log_out
    redirect_to root_path
  end

  def log_in_for(user)
    log_in user
    redirect_to root_path
  end
end
