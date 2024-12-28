module Admin
  class UsersController < Admin::ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
    
    def index
      @users = User.all
    end
  
  
    def new
      @user = User.new
    end
  
    def create 
      @user = User.new(user_params)
      if @user.save 
        session[:user_id] = @user.id
        redirect_to user_url(@user), notice: "User was successfully create"
      else
        render :new
      end
    end
  
    def show
    end
  
    def edit 
    end
  
    def update
      if @user.update(user_params)
        redirect_to user_url(@user), notice: "User was successfully update"
      else
        render :edit, status: :unprocessable_entity
      end
    end
    
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:name, :last_name, :age, :gender, :email, :username, :password, :family_plan, :property_owner, :properties, :mortgages, :number_mortgages, :own_vehicles, :number_vehicles, :financings)
    end
  end
end
  
