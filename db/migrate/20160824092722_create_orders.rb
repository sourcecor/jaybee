class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user, index: true
      t.string :order_no
      t.string :type
      t.datetime :close_date
      t.string :shipping_no
      t.string :shipping_type
      t.string :pay_type
      t.string :recipient
      t.string :phone
      t.string :zip_code
      t.string :address
      t.string :store_no
      t.string :store_address
      t.timestamps null: false
    end
  end
end
