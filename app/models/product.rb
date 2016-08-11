class Product < ActiveRecord::Base
  acts_as_paranoid
  scope :keyword_with, ->(keyword) { where("products.caption like ? or products.sub_caption like ? or products.itemcode like ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%") unless keyword.blank? || self.nil? }
  scope :cates_with, ->(cate_ids) { joins(:categories).where("category_id in (?)", cate_ids) unless cate_ids.blank? || self.nil? }
  validates :caption, :sub_caption, :itemcode, :unit_price, :sale_price, presence: true
  # 分類
  has_and_belongs_to_many :categories
  # 側寫
  has_many :profiles, -> { order(:seq) }, as: :imageable, class_name: "Picture", dependent: :destroy
  accepts_nested_attributes_for :profiles, allow_destroy: true
  #產品明細圖片
  has_many :sub_product_colors, -> { order(:seq) }, dependent: :destroy
  accepts_nested_attributes_for :sub_product_colors, allow_destroy: true
  #產品明細
  # has_many :sub_products
end
