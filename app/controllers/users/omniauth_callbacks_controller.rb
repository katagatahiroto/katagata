# coding: utf-8
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def passthru
    :passthru
  end

   # Facebook の認証処理
  def facebook
    authorization
    #callback_from :facebook
  end
  
  # Twitter の認証処理
  def twitter
    authorization
    #callback_from :twitter
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
      #logger.debug "失敗時処理"
      session[:user_id] = @user.id
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      #sign_in_and_redirect @user#, event: :authentication
      redirect_to "/"
    else
      # 失敗時処理
      provider = request.env['omniauth.auth']["provider"]
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.auth'])
    logger.debug "User.find_for_oauth #{@user.id}"
    if @user.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)

      #ret = sign_in(@user)

      session[:user_id] = @user.id
      current_user = @user
      redirect_to user_path(@user), notice: 'Signed in successfully.'
      set_flash_message(:notice, :success, :kind => "sign in successfuly") 
      #sign_in_and_redirect @user
    else
      flash[:notice] = I18n.t('devise.omniauth_callbacks.fail', kind: provider.capitalize)
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
