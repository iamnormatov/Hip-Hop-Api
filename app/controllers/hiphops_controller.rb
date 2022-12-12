class HiphopsController < ApplicationController
  skip_before_action :authorize_request, only: %i[ index show ]
  before_action :set_hiphop, only: %i[ show update destroy ]

  # GET /hiphops
  def index
    @hiphops = Hiphop.all

    render json: @hiphops
  end

  # GET /hiphops/1
  def show
    render json: @hiphop
  end

  # POST /hiphops
  def create
    @hiphop = Hiphop.new(hiphop_params)

    if @hiphop.save
      render json: @hiphop, status: :created, location: @hiphop
    else
      render json: @hiphop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hiphops/1
  def update
    if @hiphop.update(hiphop_params)
      render json: @hiphop
    else
      render json: @hiphop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hiphops/1
  def destroy
    @hiphop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hiphop
      @hiphop = Hiphop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hiphop_params
      params.require(:hiphop).permit(:artist, :groups, :subgenres)
    end
end
