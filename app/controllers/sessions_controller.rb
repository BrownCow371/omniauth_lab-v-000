class SessionsController < ApplicationController
  def create
    @auth = auth
    @user = User.find_or_create_by_omniauth(@auth)
  end

  def auth
    request.env['omniauth.auth']
  end
end
