module Admin
  class TypeIncomesUsersController < Admin::ApplicationController
    before_action :set_type_incomes_user, only: %i[ show edit update destroy ]
  
    # GET /type_incomes_users or /type_incomes_users.json
    def index
      @type_incomes_users = TypeIncomesUser.all
    end
  
    # GET /type_incomes_users/1 or /type_incomes_users/1.json
    def show
    end
  
    # GET /type_incomes_users/new
    def new
      @type_incomes_user = TypeIncomesUser.new
    end
  
    # GET /type_incomes_users/1/edit
    def edit
    end
  
    # POST /type_incomes_users or /type_incomes_users.json
    def create
      @type_incomes_user = TypeIncomesUser.new(type_incomes_user_params)
  
      respond_to do |format|
        if @type_incomes_user.save
          format.html { redirect_to @type_incomes_user, notice: "Type incomes user was successfully created." }
          format.json { render :show, status: :created, location: @type_incomes_user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @type_incomes_user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /type_incomes_users/1 or /type_incomes_users/1.json
    def update
      respond_to do |format|
        if @type_incomes_user.update(type_incomes_user_params)
          format.html { redirect_to @type_incomes_user, notice: "Type incomes user was successfully updated." }
          format.json { render :show, status: :ok, location: @type_incomes_user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @type_incomes_user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /type_incomes_users/1 or /type_incomes_users/1.json
    def destroy
      @type_incomes_user.destroy
  
      respond_to do |format|
        format.html { redirect_to type_incomes_users_path, status: :see_other, notice: "Type incomes user was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_type_incomes_user
        @type_incomes_user = TypeIncomesUser.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def type_incomes_user_params
        params.require(:type_incomes_user).permit(:name, :user_id)
      end
  end
end
