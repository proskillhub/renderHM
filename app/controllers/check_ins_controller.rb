class CheckInsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create ,:destroy ,:update]
  before_action :set_check_in, only: [:show, :edit, :update, :destroy]

  # GET /check_ins
  def index
    @check_ins = CheckIn.all
    render json:@check_ins
   
  end

  # GET /check_ins/1
  def show
  end

  # GET /check_ins/new
  def new
    @check_in = CheckIn.new
  end

  # GET /check_ins/1/edit
  def edit
  end

  # POST /check_ins
  def create
    @check_in = CheckIn.new(check_in_params)

    if @check_in.save
      redirect_to @check_in, notice: 'Check-in was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /check_ins/1
  def update
    if @check_in.update(check_in_params)
      redirect_to @check_in, notice: 'Check-in was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /check_ins/1
  def destroy
    @check_in.destroy
    redirect_to check_ins_url, notice: 'Check-in was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_in
      @check_in = CheckIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_in_params
      params.require(:check_in).permit(:guest_id, :guest_name, :address, :phone_number, :id_type, :id_number, :gender, :purpose, :arrival_and_departure, :note, :check_in_date, :check_in_time, :no_of_day, :check_out_date, :check_out_time, :total_charges, :number_of_adults, :number_of_children, :bed_id, :room_detail_id, :room_type_id)
    end
end
