class AddSeqToSubProductColors < ActiveRecord::Migration
  def change
    add_column :sub_product_colors, :seq, :integer, default: 0
  end
end
