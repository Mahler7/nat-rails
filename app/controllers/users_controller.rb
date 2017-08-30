class UsersController < ApplicationController
 
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "You have signed up successfully"
      redirect_to "/voting"
    else
      flash[:warning] = "You have not signed up successfully"
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(
        :email,
        :password,
        :password_confirmation,
        :votes,
        :suggestions
      )
    end

end
