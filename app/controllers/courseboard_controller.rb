class CourseboardController < ApplicationController
	before_action :authenticate_user!, only: [:login]


  def landing
  	@user = User.find(params[:id])
    @course = User.joins(:course).select("users.*,courses.*").find(params[:id])
  end


end
