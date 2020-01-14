class CaregoriesController < ApplicationController
  before_action :set_caregory, only: [:show, :update, :destroy]

  # GET /caregories
  def index
    @caregories = Caregory.all

    render json: @caregories
  end

  # GET /caregories/1
  def show
    render json: @caregory
  end

  # POST /caregories
  def create
    @caregory = Caregory.new(caregory_params)

    if @caregory.save
      render json: @caregory, status: :created, location: @caregory
    else
      render json: @caregory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /caregories/1
  def update
    if @caregory.update(caregory_params)
      render json: @caregory
    else
      render json: @caregory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /caregories/1
  def destroy
    @caregory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caregory
      @caregory = Caregory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def caregory_params
      params.require(:caregory).permit(:name)
    end
end
