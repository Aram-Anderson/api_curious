class SessionsController < ApplicationController
  def create
    if user = User.find_by_uid(request.env["omniauth.auth"]["extra"]["raw_info"]["id"])
      user.token = request.env["omniauth.auth"]["credentials"]["token"]
      user.save
    else
      user = User.from_omniauth(request.env["omniauth.auth"])
    end
    session[:user_id] = user.id
    redirect_to dashboard_index_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
