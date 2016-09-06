json.product @product
json.colors @product.sub_product_colors do |color|
  json.id color.id
  json.color color.color
  json.color_pic color.color_pic.thumb.url
  json.item_pic color.pictures.first.asset.content.url
  json.qty_amt color.sub_products.collect{|sub| sub.qty}.sum()
  json.items color.sub_products do |item|
    json.id item.id
    json.itemcode item.itemcode
    json.color item.color
    json.size item.size
    json.qty item.qty
  end
end