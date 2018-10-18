# json.mugs "product_1"
json.array! @products.each do |product|
  json.partial! "product.json.jbuilder", product: product
end
