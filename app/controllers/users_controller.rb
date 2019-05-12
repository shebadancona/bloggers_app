class UsersController < ApplicationController
  def registration
    render :registration
  end

  def create
    @user = User.new(user_params)
    @user.save
    flash[:notice] = "You Have Sucessfully Registered"
    redirect_to new_sessions_url

  end

  def new
  end

   private
   def user_params
    params.require(:user).permit(:name, :age, :email, :password, :password_confirmation)
   end
end
