class Book < ActiveRecord::Base
  attr_accessible :author, :category, :picture, :price, :title

  has_many :lineitems
  has_many :orders, :through => :lineitems

  def self.search
    if search
      find(:all, :conditions => ['title LIKE ? OR author LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end


end
