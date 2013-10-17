class UsersController < ApplicationController


 def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      redirect_to songs_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  def user_params
    params.require(:user).permit(:user_name, :email_address, :password, :password_confirmation)
  end
end



