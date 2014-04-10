class Book < ActiveRecord::Base
  attr_accessible :author, :category, :picture, :price, :title

  has_many :lineitems
  has_many :orders, :through => :lineitems


end
