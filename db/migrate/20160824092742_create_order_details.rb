class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.belongs_to :order, index: true
      t.string :itemcode
      t.integer :qty
      t.decimal :sale_price, precision: 8, scale: 2, default: 0
      # t.timestamps null: false
    end
  end
end
