class Api::V1::ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    render json: @listing
  end

  def edit

  end

  def update

  end

  def destroy
    @listing.destroy
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
