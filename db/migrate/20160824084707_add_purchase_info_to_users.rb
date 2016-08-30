class AddPurchaseInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :buy_count, :integer, default: 0
    add_column :users, :buy_amount, :decimal , precision: 8, scale: 2, default: 0
    add_column :users, :recipient, :string
    add_column :users, :phone, :string
    add_column :users, :zip_code, :string
    add_column :users, :address, :string
    add_column :users, :store_no, :string
    add_column :users, :store_address, :string
  end
end
