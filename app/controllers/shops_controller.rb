# coding: utf-8
class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  before_action :getprice, only: [:show,]
  before_action :otherprice, only: [:show]
  before_action :taxprice, only: [:show]
  before_action :buyprice, only: [:show]
  before_action :buyprice_sent, only: [:show]
  before_action :postageon, only: [:show]
  before_action :selldis, only: [:show]
  before_action :selldisindex, only: [:index]


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
      #@shops = Shop.all
      @questions = @shop.questions.includes(:user)
  end

  # GET /shops/new
  def new
    @shop = Shop.new
    
    5.times {@shop.images.build}
  end

  # GET /shops/1/edit
  def edit
    @shop = Shop.find(params[:id])
    @images = @shop.images
    (5-@images.size).times {@shop.images.build}
  end

  # POST /shops
  # POST /shops.json
  def create
    args = shop_params
    args[:day_date] = args[:day_date].gsub(/[年月]/,"/")
    args[:close_datetime] =
      args[:close_datetime].gsub(/[年月]/,"/").sub(/時/,":").sub(/日/," ")
    @shop = current_user.shops.build(args)
    if @shop.save
      redirect_to @shop, notice: "出品されました"
    else
      @shops = Shop.all.order(created_at: :desc)
      5.times {@shop.images.build}
      render :edit
    end

  end

  def update
    @shop = Shop.find(params[:id])
    args = shop_params
    args[:day_date] = args[:day_date].gsub(/[年月]/,"/")
    args[:close_datetime] =
      args[:close_datetime].gsub(/[年月]/,"/").sub(/時/,":").sub(/日/," ")

    params[:rm_img] && params[:rm_img].each_pair{|id,value|
      next unless value == "1"
      Image.find(id).delete
    }
    if @shop.user_id == current_user.id && @shop.update(args)
      Image.where(image: nil).delete_all
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
      format.html { redirect_to shops_url, notice: 'お手続きした商品を削除致しました。今後とも『オトクーナ』をどうぞ宜しくお願い致します。' }
      format.json { head :no_content }
    end
  end

  def mark
    @shop = Shop.find(params[:shop_id])
    Favorite.find_or_create_by(shop_id: params[:shop_id],user_id: current_user.id)
    render :json => {count: Favorite.where(shop_id: params[:shop_id]).count,
                     src: "/assets/favorite_mark.png"}
  end
  def unmark
    Favorite.where(user_id: current_user.id, shop_id: params[:shop_id]).
      delete_all
    count =Favorite.where(shop_id: params[:shop_id]).count
    render :json => {count: (count>0 ? count : "　"),src: "/assets/favorite_unmark.png" }
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).
        permit(:airt_name, :female, :big_tags, :sub_tags, :state, :day_date,
               :price, :ref_price, :certificate, :color, :size, :material, :number, :nsk,
               :ticket_name_yes_no, :shipping_method, :postage, :docide_promptly, :close_date, :close_datetime,
               :comment_text, :state_info, :madein, :accessories,
               :accessories_info, :item_name,
               :image, :image_cache, :remoe_image, images_attributes: [:image])
    end

  def getprice #商品代金の合計(代金✖️枚数)
      a = @shop.price.to_i
      b = 1
      @getprice = a * b
  end

  def buyprice #お支払い代金の合計
      a = @shop.price.to_i
      b = 1
      @getprice = a * b

    if
       @getprice <= 11999 then
       @buyprice  = (@getprice + 600) + 300

    elsif
       @getprice > 12000 && @getprice <= 19999  then
       @buyprice = (@getprice + 800 ) + 300

    elsif
       @getprice > 20000 && @getprice<= 29999 then
       @buyprice = (@getprice + 1000) + 300

    elsif
       @getprice > 30000 && @getprice<= 100000 then
       @buyprice = (@getprice * 1.03) + 300

     else
       @buyprice = (@getprice * 1.028) + 300
    end
  end

  def otherprice #手数料
      a = @shop.price.to_i
      b = 1
      @getprice = a * b

      if
       @getprice <= 11999 then
       @otherprice  = (@getprice + 600 ) - @getprice

    elsif
       @getprice > 12000 && @getprice<= 19999  then
       @otherprice = (@getprice + 800 ) - @getprice

    elsif
       @getprice > 20000 && @getprice<= 29999 then
       @otherprice = (@getprice + 1000) - @getprice

    elsif
       @getprice > 30000 && @getprice<= 100000 then
       @otherprice = (@getprice * 1.03) - @getprice

     else
       @otherprice = (@getprice * 1.028) - @getprice
    end
  end

  def taxprice #事務手数料一律300円
      a = @shop.price.to_i
      b = 1
      @getprice = a * b
      @taxprice = (@getprice + 300) - @getprice
  end

  def buyprice_sent
    sents = @shop.postage
    if
      sents == "postage_out"
      @buyprice_sent = @buyprice + 910

    elsif
      sents == "postage_in"
      @buyprice_sent = @buyprice + 0
    end
  end

  def postageon
    sents = @shop.postage
    if
      sents == "postage_out"
      @postageon = "910"

    elsif
      sents == "postage_in"
      @postageon = "0"
    end
  end

  def selldis #参考価格からの値引率表示計算式
    a = @shop.price.to_i
    b = @shop.ref_price.to_i
    off = "％OFF"
    d = "定価以上の商品"
    if
      b == 0
      @selldisbuy = "不明"
    elsif
      a <= b
      c = 100 * a / b
      selldis = 100 - c
      @selldisbuy = selldis.to_s + off
    else
      a >= b
      @selldisbuy = d
    end
  end

  # def selldisindex #参考価格からの値引率表示計算式
  #   a = @shop.price.to_i
  #   b = @shop.ref_price.to_i
  #   off = "％OFF"
  #   d = "定価以上の商品"
  #   if
  #     b == 0
  #     @selldisbuyindex = "不明"
  #   elsif
  #     a <= b
  #     c = 100 * a / b
  #     selldis = 100 - c
  #     @selldisbuyindex = selldis.to_s + off
  #   else
  #     a >= b
  #     @selldisbuyindex = d
  #   end
  # end

end
