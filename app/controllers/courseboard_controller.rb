class CourseboardController < ApplicationController
	before_action :authenticate_user!, only: [:login]
	rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

	#finding user id and finding all courses and user info based on user id to display on landing page
  def landing
  	@user = User.find(params[:id])
    @course = User.joins(:course).select("users.*,courses.*").find(params[:id])
  end


end
