class SupportCasesController < ApplicationController
  before_action :set_support_case, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /support_cases
  # GET /support_cases.json
  def index
    @support_cases = SupportCase.all
  end

  # GET /support_cases/1
  # GET /support_cases/1.json
  def show
  end

  # GET /support_cases/new
  def new
    @support_case = current_user.support_cases.build
  end

  # GET /support_cases/1/edit
  def edit
  end

  # POST /support_cases
  # POST /support_cases.json
  def create
    @support_case = current_user.support_cases.build(support_case_params)

    respond_to do |format|
      if @support_case.save
        format.html { redirect_to @support_case, notice: 'Support case was successfully created.' }
        format.json { render :show, status: :created, location: @support_case }
      else
        format.html { render :new }
        format.json { render json: @support_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_cases/1
  # PATCH/PUT /support_cases/1.json
  def update
    respond_to do |format|
      if @support_case.update(support_case_params)
        format.html { redirect_to @support_case, notice: 'Support case was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_case }
      else
        format.html { render :edit }
        format.json { render json: @support_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_cases/1
  # DELETE /support_cases/1.json
  def destroy
    @support_case.destroy
    respond_to do |format|
      format.html { redirect_to support_cases_url, notice: 'Support case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_case
      @support_case = SupportCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_case_params
      params.require(:support_case).permit(:name, :desc, :stage, :solution, :status, :contact_id, :close_date)
    end
end
