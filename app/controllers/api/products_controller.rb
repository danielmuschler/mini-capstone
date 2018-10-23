class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    # search_terms = params [:search]
    # if search_terms
    #   @products = @products.where("id ILIKE ?", "#%{search_terms}%")
    # end

    # @products = @products.order(:id => :asc)

    #Insomnia products?=search:...

    render "index.json.jbuilder"
  end

  def show
    product_id = params["id"]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @products.errors.full_messages}, status: 422
    end
  end


  def update
    product_id = params["id"]
    @product = Product.find_by(id: product_id)
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    if @product.save
      render "show.json.jbuilder"
    else
      render "json: {errors@products.errors.full_messages}, status: 422"
    end
  end

  def destroy
    product_id = params["id"]
    @product = Product.find_by(id: product_id)
    @product.destroy
    render json: {message: "Mug succesfully destroyed!"}
  end

end

