class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        render json: @current_user
    end

    def create
       user = User.create!(user_params)
       session[:user_id] = user.id
       render json: user, status: :created
    end

    private
        def user_params
            params.permit(:username, :password)
        end

        def record_invalid (invalid)
            render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
        end
    
end
