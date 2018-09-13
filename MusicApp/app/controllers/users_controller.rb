class UsersController < ApplicationController

  def new
    User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if user.save
      render :new
    else
      @user.errors.full_messages
    end
  end

  def show
    @user = User.find_by(params[:id])
    render :show
  end 

  private
    def user_params
      params.require(:user).permit(:email, :password_digest)
    end
end