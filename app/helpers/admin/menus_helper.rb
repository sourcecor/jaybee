module Admin::MenusHelper
  def sidebarMenu menus
    r_menu = []
    menus.each { |menu|
      # With the latest version of Rails you can pass "true" to an association method to remove it from the cache before fetching it.
      if (! menu.sub_menus(true).empty?)
        sub_menus = sidebarMenu menu.sub_menus
        r_menu << {'id'=> menu.id, 'title'=>menu.caption, 'icon'=> menu.icon, 'children'=>sub_menus}
      else
        r_menu << {'id'=> menu.id, 'title'=>menu.caption, 'icon'=> menu.icon, 'url'=>menu.action}
      end
    }
    return r_menu
  end
end
