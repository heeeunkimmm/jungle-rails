class Admin::DashboardController < ApplicationController
  USER_ID= ENV["ADMIN_USERNAME"]
  PASSWORD= ENV["ADMIN_PASSWORD"]

  before_filter :authenticate

  def show
  end

  def authenticate
    authenticate_or_request_with_http_basic do |id, password|
      id == USER_ID && password == PASSWORD
    end
  end

end
