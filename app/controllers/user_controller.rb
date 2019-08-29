class UsersController < ApplicationController
# show all Users
    def index
        @quotes = User.all
        render json: @quotes, status: :ok
      end

# Creating a new User
      def create
        User.create(params[:id])
      end
    # show a User by name or id
      def show
        begin
          @quote = User.find(params[:id])
          render json: @quote, status: :ok
        rescue ActiveRecord::RecordNotFound
          render json: { message: "no user matches that ID" }, status: :not_found
        rescue Exception
          render json: { message: "there was some other error" }, status: :internal_server_error
        end
      end





end