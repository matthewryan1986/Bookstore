class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  private
  def current_cart
   cart = Cart.find_by_id(session[:cart_id])
  if cart.nil?
    cart = Cart.create
    session[:cart_id] = cart.id
    end
    cart

  end
end
