class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_session

private 

  # Lazy-loaded cookies need to be jump-started
  def init_session
    session[:init] = true
  end

end
