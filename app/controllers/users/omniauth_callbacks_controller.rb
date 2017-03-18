# coding: utf-8
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def passthru
    pp :passthru
  end

  def facebook
    callback_from :facebook
  end

  # def facebook
  #   callback_from :facebook
  # end

  # def twitter
  #   callback_from :twitter
  # end

  # Facebook の認証処理
  def facebook
    authorization
  end
  
  # Twitter の認証処理
  def twitter
    authorization
  end
  
  private
  
  def authorization
    provider = request.env['omniauth.auth']["provider"]
    if current_user
      @user = @user.omniauth request.env['omniauth.auth']
    else
      @user = User.from_omniauth request.env['omniauth.auth']
    end

    if @user.persisted?
      pp "成功"
      session[:user_id] = @user.id
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @user, event: :authentication
    else
      # 失敗時処理
      pp "失敗時処理"
      provider = request.env['omniauth.auth']["provider"]
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
