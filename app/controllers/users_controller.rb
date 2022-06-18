class UsersController < ApplicationController
  before_action :set_user, except: %i[index new create]

  def new
    @user = User.new
  end

  def show; end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit :fullname, :email, :password, :phone, :address, :role
  end

  def set_user
    @user = User.find params[:id]
  end
end
