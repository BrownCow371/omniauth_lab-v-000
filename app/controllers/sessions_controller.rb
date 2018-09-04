class SessionsController < ApplicationController
  def create
    @auth = auth
    @user =
  end

  def auth
    request.env['omniauth.auth']
  end
end
