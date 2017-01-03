class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = "Please complete all fields."
      redirect_to '/users/new'
    end
  end


  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
