class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :address
      t.string :payment_method

      t.timestamps
    end
  end
end
