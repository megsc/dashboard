class DashboardController < ApplicationController
  def login
  end

  def landingPage
	@user = User.find(params[:id])
  end

  def courseDashboard
  end
end
