class OutfitsController < ApplicationController
 
    def index
        current_user = User.find_by(id: session[:user_id])
        outfits = current_user.outfits
        render json: outfits, status: :ok
    end

end
