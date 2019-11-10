class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]
    skip_before_action :authenticate_user!, only: [:webhook]
    
    def success


    end

    def webhook
        strip_transaction_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        product_id = payment.metadata.fish_id
        user_id = payment.metadata.user_id


        order = Order.new(

        user_id: user_id,
        product_id: product_id,
        stripe_id: payment_id
        )

        unless order.save
            puts "!!!!!!!!!"
            puts params
            puts "!!!!!!!!!"

        else
            puts "order successful"

        end
    end
end