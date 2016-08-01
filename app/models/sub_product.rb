class SubProduct < ActiveRecord::Base
  acts_as_paranoid
  validates :itemcode, :size, :color, :qty, presence: true

  belongs_to :sub_product_color
end
