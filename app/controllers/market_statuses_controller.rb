class MarketStatusesController < ApplicationController
  before_action :set_market_status, only: [:show, :edit, :update, :destroy]

  # GET /market_statuses
  # GET /market_statuses.json
  def index
    @market_statuses = MarketStatus.all
  end

  # GET /market_statuses/1
  # GET /market_statuses/1.json
  def show
  end

  # GET /market_statuses/new
  def new
    @market_status = MarketStatus.new
  end

  # GET /market_statuses/1/edit
  def edit
  end

  # POST /market_statuses
  # POST /market_statuses.json
  def create
    @market_status = MarketStatus.new(market_status_params)

    respond_to do |format|
      if @market_status.save
        format.html { redirect_to @market_status, notice: 'Market status was successfully created.' }
        format.json { render :show, status: :created, location: @market_status }
      else
        format.html { render :new }
        format.json { render json: @market_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_statuses/1
  # PATCH/PUT /market_statuses/1.json
  def update
    respond_to do |format|
      if @market_status.update(market_status_params)
        format.html { redirect_to @market_status, notice: 'Market status was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_status }
      else
        format.html { render :edit }
        format.json { render json: @market_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_statuses/1
  # DELETE /market_statuses/1.json
  def destroy
    @market_status.destroy
    respond_to do |format|
      format.html { redirect_to market_statuses_url, notice: 'Market status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_status
      @market_status = MarketStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_status_params
      params.require(:market_status).permit(:STATUS, :SendingTime)
    end
end
