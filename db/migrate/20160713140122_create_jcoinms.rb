class CreateJcoinms < ActiveRecord::Migration
  def change
    create_table :jcoinms do |t|
      t.string :jcard_id, limit:  8
      t.decimal :jcoin_amt, precision: 8, scale: 2, default: 0
      t.belongs_to :user, index: true
      t.string :rfcard_id, limit: 8

      t.timestamps null: false
    end
  end
end
