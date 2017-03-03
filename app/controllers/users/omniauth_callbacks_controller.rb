# coding: utf-8
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def passthru
    pp :passthru
  end

  # Facebook の認証処理
  def facebook
    callback_from :facebook
  end
  
  # Twitter の認証処理
  def twitter
    callback_from :twitter
  end
  
  private

  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      session[:user_id] = @user.id
      current_user = @user
      sign_in_and_redirect @user
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
