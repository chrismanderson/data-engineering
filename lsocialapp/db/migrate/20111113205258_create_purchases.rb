class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.decimal :price
      t.integer :count
      t.integer :customer_id
      t.integer :merchant_id

      t.timestamps
    end
  end
end
