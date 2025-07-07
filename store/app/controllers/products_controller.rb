class ProductsController < ApplicationController
    before_action :authorized

    # GET METHOD
    def getPorducts
        products=Product.all
        render json: products
    end

    # GET BY ID
    def getProductsById
        product = Product.find_by(id: params[:id])
        if product.nil?
            render json: { error: "Product not found" }, status: :not_found
        else
            render json: product
        end
    end

    # POST CONTROLLER
    def create
        product=Product.new(product_params)
        if product.save
      render json: product, status: :created
        else
            render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # PUT METHOD
    def update
        product = Product.find_by(id: params[:id])
        if product.nil?
            render json: { error: "Product not found" }, status: :not_found
        elsif product.update(product_params)
          render json: product
        else
          render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # DELETE METHOD
    def delete
      product = Product.find_by(id: params[:id])
      if product.nil?
        render json: { error: "Product not found" }, status: :not_found
      elsif product.destroy()
        render json: { msg: "Deleted succesfull" }
      else
        render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def product_params
        params.require(:product).permit(:name)
    end
end
