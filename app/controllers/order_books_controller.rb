class OrderBooksController < ApplicationController
  before_action :set_order_book, only: [:show, :edit, :update, :destroy]

  # GET /order_books
  # GET /order_books.json
  def index
    @order_books = OrderBook.all
  end

  # GET /order_books/1
  # GET /order_books/1.json
  def show
  end

  # GET /order_books/new
  def new
    @order_book = OrderBook.new
  end

  # GET /order_books/1/edit
  def edit
  end

  # POST /order_books
  # POST /order_books.json
  def create
    @order_book = OrderBook.new(order_book_params)

    respond_to do |format|
      if @order_book.save
        format.html { redirect_to @order_book, notice: 'Order book was successfully created.' }
        format.json { render :show, status: :created, location: @order_book }
      else
        format.html { render :new }
        format.json { render json: @order_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_books/1
  # PATCH/PUT /order_books/1.json
  def update
    respond_to do |format|
      if @order_book.update(order_book_params)
        format.html { redirect_to @order_book, notice: 'Order book was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_book }
      else
        format.html { render :edit }
        format.json { render json: @order_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_books/1
  # DELETE /order_books/1.json
  def destroy
    @order_book.destroy
    respond_to do |format|
      format.html { redirect_to order_books_url, notice: 'Order book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_book
      @order_book = OrderBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_book_params
      params.require(:order_book).permit(:SecurityID, :TOTAL_BIDS, :TOTAL_ASKS, :BID1_PRICE, :BID2_PRICE, :BID3_PRICE, :BID4_PRICE, :BID5_PRICE, :BID1_QTY, :BID2_QTY, :BID3_QTY, :BID4_QTY, :BID5_QTY, :BID1_SPLITS, :BID2_SPLITS, :BID3_SPLITS, :BID4_SPLITS, :BID5_SPLITS, :ASK1_PRICE, :ASK2_PRICE, :ASK3_PRICE, :ASK4_PRICE, :ASK5_PRICE, :ASK1_QTY, :ASK2_QTY, :ASK3_QTY, :ASK4_QTY, :ASK5_QTY, :ASK1_SPLITS, :ASK2_SPLITS, :ASK3_SPLITS, :ASK4_SPLITS, :ASK5_SPLITS, :Price, :Quantity, :MBO_Action, :Buy_Sell, :Priority_Sequence, :SendingTime)
    end
end
