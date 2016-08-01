class CreateSubProductColors < ActiveRecord::Migration
  def change
    create_table :sub_product_colors do |t|
      t.belongs_to :product, index: true
      t.string :color, limit: 20
      t.string :color_pic, limit:20
      t.time :deleted_at, index:true
      t.timestamps null: false
    end
  end
end
