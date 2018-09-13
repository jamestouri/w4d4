class SessionsController < ApplicationController
  def new
    render :new
  end


  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password_digest])
    if @user
      log_in_user(@user)
      redirect_to user_url
    else
      flash[:errors] = "User sign-in invalid"
    end
  end

end
