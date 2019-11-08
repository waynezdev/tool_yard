class ProductsController < ApplicationController

    # before_action :authenticate_user!, only: [:edit, :update, :delete, :create]
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
        #@product = current_user.products.find(params[:id])
        @products = Product.all

        

        if @product.condition == "brand_new"
            @product_condition = "New"

        elsif @product_condition == "used"

            @product_condition = "Used"

        end

        

        session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            customer_email: current_user.email,
            line_items: [
                {
                    name: @product.title,
                    description: @product.description,
                    amount: @product.price,
                    currency: "aud",
                    quantity: 1,

                }
            ],
            payment_intent_data: {
                metadata: {
                    user_id: current_user.id,
                    product_id: @product.id
                }

            },
            success_url: "#{root_url}payments/success?userId=#{current_user.id}&productId=#{@product.id}",
            cancel_url: "#{root_url}products/#{@product.id}"
        )

        @session_id = session.id
        @public_key = Rails.application.credentials.dig(:stripe, :public_key)
    end

    def new

         @product = Product.new
       
    end

    def create
        whitelisted_params = params.require(:product).permit(:title, :brand_id, :description, :price, :condition, :picture)
        # @product = Product.create(whitelisted_params)  is the same as
        # @product = current_user.products.create(whitelisted_params)
        
        @product = current_user.products.create(product_params)

        if @product.errors.any?
           
            render "new"

        else   
            flash[:message] = "Product uploaded successfully"
                
            redirect_to product_path(@product)

        end

    end

    def edit
        @product = Product.find(params[:id])
        # @products = Product.all
      
    end

    def update

        @product = Product.find(params[:id])
      
       
        if @product.update(product_params)
            redirect_to product_path(params[:id])

        else
            @products = Product.all
            render "edit"

        end

    end

    def destroy

        @product = Product.find(params[:id])
        @product.destroy

        flash[:message] = "Product deleted successfully"

        redirect_to products_path

    end



    private
    def product_params

        product = params.require(:product).permit(:title, :brand_id, :description, :price, :condition, :picture)
        product[:price] = product[:price].to_f*100.0
        # params[:product][:price] = (params[:product][:price].to_f * 100).to_i
        product
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