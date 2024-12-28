module Admin
  class TypeExpensesController < Admin::ApplicationController
    before_action :set_type_expense, only: %i[ show edit update destroy ]
  
    # GET /type_expenses or /type_expenses.json
    def index
      @type_expenses = TypeExpense.all
    end
  
    # GET /type_expenses/1 or /type_expenses/1.json
    def show
    end
  
    # GET /type_expenses/new
    def new
      @type_expense = TypeExpense.new
    end
  
    # GET /type_expenses/1/edit
    def edit
    end
  
    # POST /type_expenses or /type_expenses.json
    def create
      @type_expense = TypeExpense.new(type_expense_params)
  
      respond_to do |format|
        if @type_expense.save
          format.html { redirect_to admin_type_expense_url(@type_expense), notice: "Type expense was successfully created." }
          format.json { render :show, status: :created, location: @type_expense }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @type_expense.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /type_expenses/1 or /type_expenses/1.json
    def update
      respond_to do |format|
        if @type_expense.update(type_expense_params)
          format.html { redirect_to admin_type_expense_url(@type_expense), notice: "Type expense was successfully updated." }
          format.json { render :show, status: :ok, location: @type_expense }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @type_expense.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /type_expenses/1 or /type_expenses/1.json
    def destroy
      @type_expense.destroy
  
      respond_to do |format|
        format.html { redirect_to admin_type_expenses_path, status: :see_other, notice: "Type expense was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_type_expense
        @type_expense = TypeExpense.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def type_expense_params
        params.require(:type_expense).permit(:name)
      end
  end  
end
