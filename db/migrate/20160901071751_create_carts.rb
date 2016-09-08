class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.belongs_to :user, index: true
      t.string :itemcode
      t.integer :qty
      t.belongs_to :product, index: true
    end
  end
end
