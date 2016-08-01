module SitesHelper
  def categoryMenu cates
    r_cate = []
    cates.each { |cate|
      # With the latest version of Rails you can pass "true" to an association method to remove it from the cache before fetching it.
      if (! cate.sub_categories(true).empty?)
        sub_cates = categoryMenu cate.sub_categories
        r_cate << {'id'=> cate.id, 'caption'=>cate.caption, 'children'=>sub_cates}
      else
        r_cate << {'id'=> cate.id, 'caption'=>cate.caption}
      end
    }
    return r_cate
  end
end
