class UsersController < ApplicationController
  before_action :check_user, only: %i(show)

  def show
    @address = @user.addresses
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "signup.success"
      redirect_to login_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(User::USER_ATR)
  end

  def check_user
    @user = User.find_by(id: params[:id])
    return if @user

    flash[:danger] = t ".not_found"
    redirect_to root_url
  end
end
