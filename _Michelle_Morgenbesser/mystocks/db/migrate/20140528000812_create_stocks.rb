class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.integer :shares
      t.float :price_paid
      t.integer :user_id

      t.timestamps
    end
  end
end
