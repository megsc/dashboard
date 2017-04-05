class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end 

  # GET /users/1
  # GET /users/1.json
  def show
	   @user = User.find(params[:id])
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #def authenticate_user
    #  if !logged_in?
    #    redirect_to login_url
    #  end
    #end

end
