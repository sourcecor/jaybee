class Menu < ActiveRecord::Base
  validates :caption, :action, :icon, presence: true

  has_many :sub_menus, -> { order(:seq) }, class_name: "Menu", foreign_key: "parent_id", dependent: :destroy
  accepts_nested_attributes_for :sub_menus, reject_if: :all_blank, allow_destroy: true
  belongs_to :p_menu, class_name: "Menu"

  # remove from related table
  # after_destroy { |record|
  #   ActiveRecord::Base.connection.execute("DELETE from admin_groups_menus where menu_id = '#{record.id}'")
  # }
  def sub_menu_recur(menu)
    r_menu = []
    r_menu << [ menu.caption, menu.id ]
    menu.sub_menus.each do |item|
      if !item.sub_menus.empty?
        g_menu = sub_menu_recur(item)
        r_menu = r_menu + g_menu
      else
        r_menu << [ item.caption, item.id ]
      end
    end
    return r_menu
  end

  def sub_menu_group
    r_menu = []
    self.sub_menus.each do |menu|
      if !menu.sub_menus.empty?
        g_menu = sub_menu_recur(menu)
        r_menu = r_menu + g_menu
      else
        r_menu << [ menu.caption, menu.id ]
      end
    end
    return r_menu
  end
end
