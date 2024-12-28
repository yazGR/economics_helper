module Admin
  class TypeExpensesUsersController < Admin::ApplicationController
    before_action :set_type_expenses_user, only: %i[ show edit update destroy ]
  
    # GET /type_expenses_users or /type_expenses_users.json
    def index
      @type_expenses_users = TypeExpensesUser.all
    end
  
    # GET /type_expenses_users/1 or /type_expenses_users/1.json
    def show
    end
  
    # GET /type_expenses_users/new
    def new
      @type_expenses_user = TypeExpensesUser.new
    end
  
    # GET /type_expenses_users/1/edit
    def edit
    end
  
    # POST /type_expenses_users or /type_expenses_users.json
    def create
      @type_expenses_user = TypeExpensesUser.new(type_expenses_user_params)
  
      respond_to do |format|
        if @type_expenses_user.save
          format.html { redirect_to @type_expenses_user, notice: "Type expenses user was successfully created." }
          format.json { render :show, status: :created, location: @type_expenses_user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @type_expenses_user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /type_expenses_users/1 or /type_expenses_users/1.json
    def update
      respond_to do |format|
        if @type_expenses_user.update(type_expenses_user_params)
          format.html { redirect_to @type_expenses_user, notice: "Type expenses user was successfully updated." }
          format.json { render :show, status: :ok, location: @type_expenses_user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @type_expenses_user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /type_expenses_users/1 or /type_expenses_users/1.json
    def destroy
      @type_expenses_user.destroy
  
      respond_to do |format|
        format.html { redirect_to type_expenses_users_path, status: :see_other, notice: "Type expenses user was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_type_expenses_user
        @type_expenses_user = TypeExpensesUser.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def type_expenses_user_params
        params.require(:type_expenses_user).permit(:name, :user_id)
      end
  end
end
