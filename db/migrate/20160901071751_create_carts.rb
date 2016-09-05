class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.belongs_to :user, index: true
      t.string :itemcode
      t.integer :qty
      t.decimal :sale_price, precision: 8, scale: 2, default: 0
    end
  end
end
