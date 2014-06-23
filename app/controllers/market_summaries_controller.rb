class MarketSummariesController < ApplicationController
  before_action :set_market_summary, only: [:show, :edit, :update, :destroy]

  # GET /market_summaries
  # GET /market_summaries.json
  def index
    @market_summaries = MarketSummary.all
  end

  # GET /market_summaries/1
  # GET /market_summaries/1.json
  def show
  end

  # GET /market_summaries/new
  def new
    @market_summary = MarketSummary.new
  end

  # GET /market_summaries/1/edit
  def edit
  end

  # POST /market_summaries
  # POST /market_summaries.json
  def create
    @market_summary = MarketSummary.new(market_summary_params)

    respond_to do |format|
      if @market_summary.save
        format.html { redirect_to @market_summary, notice: 'Market summary was successfully created.' }
        format.json { render :show, status: :created, location: @market_summary }
      else
        format.html { render :new }
        format.json { render json: @market_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_summaries/1
  # PATCH/PUT /market_summaries/1.json
  def update
    respond_to do |format|
      if @market_summary.update(market_summary_params)
        format.html { redirect_to @market_summary, notice: 'Market summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_summary }
      else
        format.html { render :edit }
        format.json { render json: @market_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_summaries/1
  # DELETE /market_summaries/1.json
  def destroy
    @market_summary.destroy
    respond_to do |format|
      format.html { redirect_to market_summaries_url, notice: 'Market summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_summary
      @market_summary = MarketSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_summary_params
      params.require(:market_summary).permit(:TRADE_VOLUME, :SHARE_VOLUME, :MARKET_TYPE, :SendingTime)
    end
end
