class Category < ActiveRecord::Base

  # attr_accessor :params

  validates :caption, presence: true

  has_and_belongs_to_many :products

  has_many :pictures, -> { order(:seq) }, as: :imageable, class_name: "Picture", dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true, :reject_if => lambda { |a| a[:asset].blank? }

  has_many :sub_categories, -> { order(:seq) }, class_name: "Category", foreign_key: "parent_id", dependent: :destroy
  accepts_nested_attributes_for :sub_categories, allow_destroy: true, :reject_if => lambda { |a| a[:caption].blank? }

  belongs_to :p_category, class_name: "Category", foreign_key: "parent_id"

  def self.c_cate_ids_recur(cate)
    r_cate = []
    cate.sub_categories.each do |item|
      if !item.sub_categories.empty?
        g_cate = self.c_cate_ids_recur(item)
        r_cate = r_cate + g_cate
      else
        r_cate << item.id
      end
    end
    return r_cate
  end

  def self.c_cate_ids(_id)
    r_cate = []
    r_cate << _id
    cate = self.find(_id)
    if !cate.sub_categories.empty?
      g_cate = self.c_cate_ids_recur(cate)
      r_cate = r_cate + g_cate
    end
    return r_cate.join(',').split(",").map(&:to_i)
  end

  def self.c_parent(_id)
    cate = self.find(_id)
    cate = cate.p_category while cate.p_category.nil? == false
    self.where(id: cate.id)
  end

  def self.c_bread(_id)
    cate = self.find(_id)
    s_bread = "<a href=/sites/products?category=#{cate.id}>#{cate.caption}</a>"
    while (cate.p_category.nil? == false) do
      cate = cate.p_category
      s_bread = s_bread.prepend("<a href=/sites/products?category=#{cate.id}>#{cate.caption}</a> > ")
    end
    s_bread.prepend("<a href=/>首頁</a> > ")
  end

  def sub_cate_recur(cate)
    r_cate = []
    r_cate << [ cate.caption, cate.id ]
    cate.sub_categories.each do |item|
      if !item.sub_categories.empty?
        g_cate = sub_cate_recur(item)
        r_cate = r_cate + g_cate
      else
        r_cate << [ item.caption, item.id ]
      end
    end
    return r_cate
  end

  def sub_cate_group
    r_cate = []
    self.sub_categories.each do |cate|
      if !cate.sub_categories.empty?
        g_cate = sub_cate_recur(cate)
        r_cate = r_cate + g_cate
      else
        r_cate << [ cate.caption, cate.id ]
      end
    end
    return r_cate
  end
end
