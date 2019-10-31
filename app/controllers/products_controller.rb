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

    #     @product = Product.new
       
    end

  


end