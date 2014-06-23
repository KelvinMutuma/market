class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  # GET /instruments
  # GET /instruments.json
  def index
    @instruments = Instrument.all
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
  end

  # GET /instruments/new
  def new
    @instrument = Instrument.new
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to @instrument, notice: 'Instrument was successfully created.' }
        format.json { render :show, status: :created, location: @instrument }
      else
        format.html { render :new }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to @instrument, notice: 'Instrument was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrument }
      else
        format.html { render :edit }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to instruments_url, notice: 'Instrument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_params
      params.require(:instrument).permit(:SecurityID, :IssueDate, :ISIN, :QUANTITY_ISSUED, :PAR_VALUE, :ISSUED_PRICE, :LAST_TRADED_PRICE, :WTD_HI_PRICE, :MTD_HI_PRICE, :YTD_HI_PRICE, :P12_HI_PRICE, :ALL_HI_PRICE, :ALL_LO_PRICE, :WTD_LO_PRICE, :MTD_LO_PRICE, :YTD_LO_PRICE, :P12_LO_PRICE, :TDY_SHARE_VOL, :WTD_SHARE_VOL, :MTD_SHARE_VOL, :YTD_SHARE_VOL, :P12_SHARE_VOL, :TDY_TRADE_VOL, :WTD_TRADE_VOL, :MTD_TRADE_VOL, :YTD_TRADE_VOL, :P12_TRADE_VOL, :TDY_TURNOVER, :WTD_TURNOVER, :MTD_TURNOVER, :YTD_TURNOVER, :P12_TURNOVER, :PREVIOUS_CLOSE, :FOREIGN_HOLDINGS, :XC, :XD, :XR, :FOREIGN_PERCENTAGE, :DATE, :HI_TRADE, :LO_TRADE, :CLOSING_PRICE, :SendingTime)
    end
end
