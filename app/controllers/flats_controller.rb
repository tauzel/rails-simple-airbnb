# TODO: Show / Fetch map from mapbox with given address
# TODO: Show / Make the image as banner + organise info in subcards

class FlatsController < ApplicationController
  before_action :fetch_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save!

    redirect_to flats_path
  end

  def show
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    redirect_to flat_path(@flat.id)
  end

  def destroy
    @flat.destroy

    redirect_to flats_path
  end

  private

  def fetch_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
