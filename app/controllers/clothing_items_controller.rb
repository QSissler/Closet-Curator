class ClothingItemsController < ApplicationController

    def index
        current_user = User.find_by(id: session[:user_id])
        items = current_user.clothing_items
        render json: items, status: :ok
    end
    
end
