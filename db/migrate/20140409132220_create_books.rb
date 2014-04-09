class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.double :price
      t.string :category
      t.string :picture

      t.timestamps
    end
  end
end
