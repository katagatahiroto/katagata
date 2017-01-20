class FavoritesController < ApplicationController
  #お気に入り登録用アクション
  # def create
  #   @user_id = session[:id] #ログインしたユーザのID
  #   @shop_id = Shop.find(params[:id]).id #特定の本のID
  #   #book_idに@book_id、user_idに@user_idを入れて、Favoriteモデルに新しいオブジェクトを作る
  #   @favorite = Favorite.new(shop_id: @shop_id, user_id: @user_id)
  #   if @favorite.save
  #     #保存に成功した場合、本一覧画面に戻る
  #     redirect_to shops_path
  #   end
  # end
  
  # お気に入り登録(ajax)
  def mark
    @shop = Shop.find(params[:shop_id])
    favorite = current_user.favorites.build(shop_id: @shop.id)
    favorite.save
  end
  
  # お気に入り削除(ajax)
  def unmark
    @shop = Shop.find(params[:shop_id])
    favorite = current_user.favorites.find_by(shop_id: @shop.id)
    favorite.destroy
  end

  # #お気に入り削除用アクション
  # def destroy
  #   @favorite = Favorite.find(params[:id])
  #   if @favorite.destroy
  #     #削除に成功した場合、ログインしているユーザの詳細画面に戻る
  #     redirect_to user_path(session[:id])
  # end
end
