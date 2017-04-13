class DashboardController < ApplicationController
    before_action :authenticate_user!, only: [:login]
  
  #def login
    #user = User.find(1)
  	#user = User.find_by(userName: params[:session][:name].downcase)

    #user.debug

  	#if user #&& user.authenticate(params[:session][:password])
  		#log_in user
  	#	redirect_to landingPage_url
  	#else
  	#	flash.now[:danger] = 'Invalid credentials'
  	#	render 'login'
  	#end

  #end

  def landingPage 

     @user = User.find(params[:id])
     @course = User.joins(:course).select("users.*,courses.*").find(params[:id])
     #@usercourse = Course.joins(:users).all
  
     @testVar = User.includes(:course).all
     console

     
  end

  def courseDashboard
    @user = User.find(params[:courseID])
    #@coursecontent = Coursecontent.find(params[:courseContentID][:contentName][:contentDescription])
  end

  #def destroy
  	#log_out
  	#redirect_to login_url
  #end

end
