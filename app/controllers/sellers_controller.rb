class SellersController < ApplicationController

    def new
        @seller = Seller.new

    end

    def create
        current_user.create_seller(params.require(:seller).permit(:company_name, :ABN))
        redirect_to root_path
    end




end