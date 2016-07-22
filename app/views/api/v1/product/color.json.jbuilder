json.colors @product.sub_product_colors do |item|
  json.id item.id
  json.color item.color
  json.color_pic item.color_pic.thumb.url
end