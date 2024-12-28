module Admin
  class TypeIncomesController < Admin::ApplicationController
    before_action :set_type_income, only: %i[ show edit update destroy ]
  
    # GET /type_incomes or /type_incomes.json
    def index
      @type_incomes = TypeIncome.all
    end
  
    # GET /type_incomes/1 or /type_incomes/1.json
    def show
    end
  
    # GET /type_incomes/new
    def new
      @type_income = TypeIncome.new
    end
  
    # GET /type_incomes/1/edit
    def edit
    end
  
    # POST /type_incomes or /type_incomes.json
    def create
      @type_income = TypeIncome.new(type_income_params)
  
      respond_to do |format|
        if @type_income.save
          format.html { redirect_to @type_income, notice: "Type income was successfully created." }
          format.json { render :show, status: :created, location: @type_income }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @type_income.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /type_incomes/1 or /type_incomes/1.json
    def update
      respond_to do |format|
        if @type_income.update(type_income_params)
          format.html { redirect_to @type_income, notice: "Type income was successfully updated." }
          format.json { render :show, status: :ok, location: @type_income }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @type_income.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /type_incomes/1 or /type_incomes/1.json
    def destroy
      @type_income.destroy
  
      respond_to do |format|
        format.html { redirect_to type_incomes_path, status: :see_other, notice: "Type income was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_type_income
        @type_income = TypeIncome.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def type_income_params
        params.require(:type_income).permit(:name)
      end
  end  
end
