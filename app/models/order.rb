class Order < ActiveRecord::Base
  attr_accessible :payment_method, :total, :user_id

  def add_lineitems_from_cart(cart)
    cart.lineitems.each do |item|
      item.cart_id = nil
      lineitems << item
    end
  end
end
