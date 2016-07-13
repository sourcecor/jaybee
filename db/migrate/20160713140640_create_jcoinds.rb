class CreateJcoinds < ActiveRecord::Migration
  def change
    create_table :jcoinds do |t|
      t.belongs_to :jcoinm, index: true
      t.string :custom_no , limit:  10
      t.string :data_date ,limit: 10
      t.string :sale_no ,limit: 20
      t.string :data_type_no ,limit:  2
      t.decimal :opt_amt, precision: 8, scale: 2, default: 0
      t.decimal :redeem_amt ,precision: 8, scale: 2, default: 0
      t.decimal :reward_amt ,precision: 8, salce: 2, default: 0
      t.decimal :balance ,precision: 8, salce: 2, defualt: 0
      t.timestamps null: false
    end
  end
end
