class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]
    
    
    def success


    end

    def webhook
        puts params


    end
end