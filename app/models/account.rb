class Account < ActiveRecord::Base
  attr_accessible :address, :payment_method
end
