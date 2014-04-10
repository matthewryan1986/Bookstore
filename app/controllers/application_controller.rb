class ApplicationController < ActionController::Base
  protect_from_forgery

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
