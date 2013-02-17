class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper #by default, sessions helpers are abvailable in views, not controllers
  
end
