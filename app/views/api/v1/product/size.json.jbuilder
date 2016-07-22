json.colors @sub_product_color.sub_products do |item|
  json.id item.id
  json.itemcode item.itemcode
  json.color item.color
  json.size item.size
  json.qty item.qty
end