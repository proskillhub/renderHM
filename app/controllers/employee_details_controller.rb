class EmployeeDetailsController < ApplicationController
  before_action :set_employee_detail, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create ,:destroy]
  
  def index
    @employee_details = EmployeeDetail.all
    render json: @employee_details
  end

  def show
  end

  def new
    @employee_detail = EmployeeDetail.new
  end

  def edit
  end

  def create
    @employee_detail = EmployeeDetail.new(employee_detail_params)

    if @employee_detail.save
      redirect_to @employee_detail, notice: 'Employee detail was successfully created.'
    else
      render :new
    end
  end

  def update
    if @employee_detail.update(employee_detail_params)
      redirect_to @employee_detail, notice: 'Employee detail was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @employee_detail.destroy
    redirect_to employee_details_url, notice: 'Employee detail was successfully destroyed.'
  end

  private
    def set_employee_detail
      @employee_detail = EmployeeDetail.find(params[:id])
    end

    def employee_detail_params
      params.require(:employee_detail).permit(:employee_name, :parents_name, :contact_number_no, :identification_card, :designation, :joining_date)
    end
end
