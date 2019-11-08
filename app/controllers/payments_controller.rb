class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]
    skip_before_action :authenticate_user!, only: [:webhook]
    
    def success


    end

    def webhook
        puts params


    end
end