# coding: utf-8
Rails.application.routes.draw do
# お問い合わせフォーム
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面

#  devise_for :users
  devise_for :users, controllers: {
               omniauth_callbacks: 'users/omniauth_callbacks'
             }

  resources :users, only: [:show,:index,:edit]
  resources :shops do
  resources :questions, only: [:create]
  end
  # get '/auth/:provider/callback',    to: 'users#create',       as: :auth_callback
  # get '/auth/failure',               to: 'users#auth_failure', as: :auth_failure
  get  'users/:id'   =>  'users#show'
  get  'users/:id'  => 'users#index'
  root 'home#top'
  get '/about' => 'home#about'

  get   '/shops/mark/:shop_id' => 'shops#mark', as: 'favorites_mark'     # お気に入りの追加
  get   '/shops/unmark/:shop_id' => 'shops#unmark', as: 'favorites_unmark' # お気に入りの解除
  #resources :favorite
  
  get 'home/puraibashi'
  get 'home/torihikihou'
  get 'home/kiyaku'
  get 'home/kakaku'
  get 'home/payment'
  get 'home/esukuro'

  # get 'home/ddt_pro'


  # The priority is based upon order of creation: first created _> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub_resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub_resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
