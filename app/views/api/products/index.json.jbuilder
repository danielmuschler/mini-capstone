# json.mugs "product_1"
json.array! @mugs.each do |product|
  json.partial! "product.json.jbuilder", product: product
end
