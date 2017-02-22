# coding: utf-8
class UsersController < ApplicationController
   #before_action :authenticate_user!
   before_action :set_user, only: [:show, :edit, :update,]

    def show
      @shops = Shop.all
      @user = current_user
      @nickname = current_user.nickname
      @name = current_user.name
      @tel = current_user.tel
      @number = current_user.number
      @big_address = current_user.big_address
      @subaddress = current_user.subaddress
      @address = current_user.address
      @littleaddress = current_user.littleaddress
      @bankname = current_user.bankname
      @branch_name = current_user.branch_name
      @account_type = current_user.account_type
      @account_number = current_user.account_number
      @account_name = current_user.account_name
      @money = current_user.momey
      @identification = current_user.identification
      @shops = current_user.shops.page(params[:page]).per(5).order("created_at DESC")
      #特定のユーザーが登録したお気に入りを全て取得する
      @favorite_shops = current_user.favorite_shops.page(params[:favorite_page]).per(5).order("created_at DESC")
    end

    def index
    end

    def edit
      @last_sign_in_at = current_user.last_sign_in_at
      @nickname = current_user.nickname
      @email = current_user.email
    end

    def update
    end

     private

     def set_user
       @user = User.find(params[:id])
     end



end
