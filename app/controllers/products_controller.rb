class ProductsController < ApplicationController

    before_action :authenticate_user!
    # before_action :set_product, only: [:show]
    # before_action :set_user_product, only: [:edit, :update]

    def index
        if params[:search] && !params[:search].empty?
            @products = Product.where(title: params[:search])
        else
            @products = Product.all
        end
    end

    def show

        @product = Product.find(params[:id])
        # @product = current_user.products.find(params[:id])
        @products = Product.all

        # session = Stripe::Checkout::Session.create(
        #     payment_method_types: ['card'],
        #     customer_email: current_user.email,
        #     line_items: [
        #         {
        #             name: @product.title,
        #             description: @product.description,
        #             amount: @product.price,
        #             currency: "aud",
        #             quantity: 1,

        #         }
        #     ],
        #     payment_intent_data: {
        #         metadata: {
        #             user_id: current_user.id,
        #             product_id: @product.id
        #         }

        #     },
        #     success_url: "#{root_url}payments/success?userId=#{current_user.id}&productId=#{@product.id}",
        #     cancel_url: "#{root_url}products/#{@product.id}"
        # )

        # @session_id = session.id
        # @public_key = Rails.application.credentials.dig(:stripe, :public_key)
    end

    def new

         @product = Product.new
       
    end

    def create
        whitelisted_params = params.require(:product).permit(:title, :brand_id, :description, :price, :condition)
        # @product = Product.create(whitelisted_params)  is the same as
        # @product = current_user.products.create(whitelisted_params)
        
        @product = current_user.products.create(product_params)

        if @product.errors.any?
           
            render "new"

        else        
            redirect_to product_path(@product)

        end
    end

    private
    def product_params

        params.require(:product).permit(:title, :brand_id, :description, :price, :condition)

    end

    def set_product

        @product = Product.find(params[:id]) 

    end

    def set_user_product

        # @products = Product.find(params[:id])

        @products = current_user.products.find_by_id(params[:id])

        # if @product.user_id != current_user.id
        if @product == nil

            redirect_to products_path
        end


    end

  


end