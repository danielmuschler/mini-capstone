class Api::ProductsController < ApplicationController
  def product_model
    render "products.json.jbuilder"
  end
end

