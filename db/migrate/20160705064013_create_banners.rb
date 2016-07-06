class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :caption, limit: 20, default: '#'
      t.integer :parent_id
      t.integer :seq
      t.timestamps null: false
    end
  end
end
