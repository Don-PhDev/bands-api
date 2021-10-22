class Api::V1::BandsController < ApplicationController
  before_action :set_band, only: [:show, :update, :destroy]

  def index
    @bands = Band.all.order(created_at: :asc)

    render json: @bands
  end

  def show
    render json: @band
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  def update
    if @band.update(band_params)
      render json: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @band.destroy
  end

  private

  def set_band
    @band = Band.find(params[:id])
    rescue ActiveRecord::RecordNotFound
  end

  def band_params
    params.require(:band).permit(:name)
  end
end
