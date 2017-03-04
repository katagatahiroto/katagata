class HomeController < ApplicationController

  def top
    @shops = Shop.order("created_at DESC").limit(7)
    @search = Shop.search(params[:q])
    @shops = @search.result
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @shops }
    # end
    @selldisbuy
  end

  def about
  end

  def payment
  end

  def esukuro
  end



# def  ddt_pro
#    @shops = Shop.all.order("price DESC")
#     @search = Shop.search(params[:q])
#     @shops = Shop.search(:airt_name_cont => 'DDTプロレスリング').result.page(params[:page]).per(30)
#     respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @shops }
#     end
# end



end



