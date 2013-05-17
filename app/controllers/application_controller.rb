class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_session

private 

  # Necessary to ensure that the session is available on first request
  def init_session
    session[:init] = true
  end

end
