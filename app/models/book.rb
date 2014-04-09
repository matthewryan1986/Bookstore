class Book < ActiveRecord::Base
  attr_accessible :author, :category, :picture, :price, :title
end
