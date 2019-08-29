class UsersController < ApplicationController
# show all Users
    def index
        @users = User.all
        render json: @users, status: :ok
      end

# Creating a new User
      # def create
      #   User.create(params[:id])
      #   @user.save
      #   redirect_to @user
      # end
    # show a User by name or id
      def show
        # begin
          @user = User.find(params[:id])
          render json: @user, status: :ok
        # rescue ActiveRecord::RecordNotFound
        #   render json: { message: "no user matches that ID" }, status: :not_found
        # rescue Exception
        #   render json: { message: "there was some other error" }, status: :internal_server_error
        # end
      end





end