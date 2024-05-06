class BedsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create ,:destroy ,:update]
  def index
    @beds = Bed.all
    render json: @beds
  end

  def show
    @bed = Bed.find(params[:id])
  end

  def new
    @bed = Bed.new
  end

  def create
    @bed = Bed.new(bed_params)
    if @bed.save
      redirect_to @bed, notice: 'Bed was successfully created.'
    else
      render :new
    end
  end

  def edit
    @bed = Bed.find(params[:id])
  end

  def update
    @bed = Bed.find(params[:id])
    if @bed.update(bed_params)
      redirect_to @bed, notice: 'Bed was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bed = Bed.find(params[:id])
    @bed.destroy
    redirect_to beds_path, notice: 'Bed was successfully destroyed.'
  end

  private

  def bed_params
    params.require(:bed).permit( :bed_size, :price)
  end
end
