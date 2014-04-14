class Book < ActiveRecord::Base
  attr_accessible :author, :category, :picture, :price, :title

  has_many :lineitems
  has_many :orders, :through => :lineitems

  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ?', search_condition])
  end
end
