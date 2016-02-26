class HomeController < ApplicationController
  def index
  end

  def facebook
    token = params[:token]
    profile = Facebook.profile(token)
    render plain: profile
  end
end
