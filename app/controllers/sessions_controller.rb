class SessionsController < ApplicationController
  def create
    @auth = auth
    @user = User.find_or_create_by_omniauth(@auth)
    raise @user.inspect
    session[:user_id] = @user.id
  end

  def auth
    request.env['omniauth.auth']
  end
end
