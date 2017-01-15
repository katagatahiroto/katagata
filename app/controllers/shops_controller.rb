class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  before_action :getprice, only: [:show,]
  before_action :otherprice, only: [:show]
  before_action :taxprice, only: [:show]
  before_action :buyprice, only: [:show]
  before_action :buyprice_sent, only: [:show]
  before_action :postageon, only: [:show]


  # GET /shops
  # GET /shops.json
  def index
      @shops = Shop.all
      @search = Shop.search(params[:q])
      @shops = @search.result.page(params[:page]).per(30)
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
     end

  end

  # GET /shops/1
  # GET /shops/1.json
  def show
      @shops = Shop.all
      @questions = @shop.questions.includes(:user)
  end

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops
  # POST /shops.json
  def create
    @shop = current_user.shops.build(shop_params)
    if
    @shop.save
    redirect_to @shop, notice: "出品されました"
    else
      @shops = Shop.all.order(created_at: :desc)
      render :edit
    end

  end

  def update
    if @shop.user_id == current_user.id
       @shop.update(shop_params)
       redirect_to @shop, notice: '出品内容を変更しました。'
    else
      render :edit
    end

  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    if @shop.user_id == current_user.id
       @shop.destroy
    end
    respond_to do |format|
      format.html { redirect_to shops_url, notice: 'お手続きしたチケットを削除致しました。今後ともTicketNaviをどうぞ宜しくお願い致します。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:live_tour_name, :airt_name, :time_date, :plase, :day_date, :colse_date, :price, :list_price, :number_of_sheets, :serial_number, :shipping_method, :ticketing_state, :postage, :nsk, :ticket_name, :ticket_name_yes_no, :seat_in_detail, :docide_promptly, :othertext, :seat, :image, :image_cache, :remove_image, :colse_day)
    end

  def getprice
      a = @shop.price.to_i
      b = @shop.number_of_sheets_i18n.to_i
      @getprice = a * b
  end

  def getprice_index
      a = shop.price.to_i
      b = shop.number_of_sheets_i18n.to_i
      @getprice_index = a * b
  end

  def buyprice
      a = @shop.price.to_i
      b = @shop.number_of_sheets_i18n.to_i
      @getprice = a * b

    if
       @getprice <= 8000
       @buyprice  = (@getprice + 400) * 1.04

    else
       @buyprice = (@getprice * 1.04) * 1.04
    end
  end

  def otherprice
      a = @shop.price.to_i
      b = @shop.number_of_sheets_i18n.to_i
      @getprice = a * b
    if
       @getprice <= 8000
       @otherprice  = (@getprice + 400) - @getprice.to_i

    else
       @otherprice = (@getprice * 1.04) - @getprice.to_i
    end
  end

  def taxprice
      a = @shop.price.to_i
      b = @shop.number_of_sheets_i18n.to_i
      @getprice = a * b

    if
       @getprice <= 8000
       @taxprice  = (@getprice + 400) * 1.04 - 400 -@getprice.to_i

    else
       @taxprice = (@getprice * 1.04) * 1.04 - (@getprice * 1.04)
    end
  end

  def buyprice_sent
    sents = @shop.postage
    if
      sents == "postage_out"
      @buyprice_sent = @buyprice + 510

    elsif
      sents == "postage_in"
      @buyprice_sent = @buyprice + 0
    end
  end

  def postageon
    sents = @shop.postage
    if
      sents == "postage_out"
      @postageon = "510"

    elsif
      sents == "postage_in"
      @postageon = "0"
    end
  end

end
