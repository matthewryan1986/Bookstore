class Lineitem < ActiveRecord::Base
  attr_accessible :book_id, :cart_id, :order_id, :quantity

  belongs_to :cart
  belongs_to :order
  belongs_to :book

end
