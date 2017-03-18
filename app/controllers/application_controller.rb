# coding: utf-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_ransack


  helper_method  :logged_in?
  
  def set_ransack
   pp [current_user, user_signed_in?]
    #@search = Article.search(params[:q])
   @ransack = Shop.ransack(params[:q]) #ransackメソッド推奨
   @ransack_airt_name = @ransack.result.page(params[:page])
  end
  
  # def after_sign_in_path_for(resource)
  #   user_path(resource)
  # end
  
  # def after_sign_out_path_for(resource)
  #   root_path
  # end


  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update , keys: [:name, :nickname, :tel, :number ,:address ,:littleaddress ,:subaddress ,:big_address ,:bankname, :branch_name, :account_type, :account_number, :account_name])
  end
   def current_user
     return unless session[:user_id]
     @current_user ||= User.find(session[:user_id])
   end

  # def logged_in?
  #   !!session[:user_id]
  # end

  # def authenticate
  #   return if logged_in?
  #   redirect_to root_path, alert: 'ログインしてください'
  # end
end

