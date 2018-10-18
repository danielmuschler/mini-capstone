class Api::ProductsController < ApplicationController
  def index
    @mugs = Product.all
    render "index.json.jbuilder"
  end

  def show
    product_id = params["id"]
    @mug = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    @mug = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    @mug.save
    render "show.json.jbuilder"
  end

  def update
    product_id = params["id"]
    @mug = Product.find_by(id: product_id)
    @mug.name = params["name"] || @mug.name
    @mug.price = params["price"] || @mug.price
    @mug.image_url = params["image_url"] || @mug.image_url
    @mug.description = params["description"] || @mug.description
    @mug.save
    render "show.json.jbuilder"
  end

  def destroy
    product_id = params["id"]
    @mug = Product.find_by(id: product_id)
    @mug.destroy
    render json: {message: "Mug succesfully destroyed!"}
  end

end

