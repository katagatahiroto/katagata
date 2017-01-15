Rails.application.routes.draw do
# お問い合わせフォーム
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面

  devise_for :users
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
  get 'home/puraibashi'
  get 'home/torihikihou'
  get 'home/kiyaku'
  get 'home/kakaku'
  get 'home/payment'
  get 'home/esukuro'
  # ここからジャニーズ
  get 'home/smap'
  get 'home/tokio'
  get 'home/kis_my_ft2'
  get 'home/hey_say_jump'
  get 'home/kanjani8'
  get 'home/abc_z'
  get 'home/arashi'
  get 'home/yamasita_p'
  get 'home/kinki_kids'
  get 'home/johnnys_jr'
  get 'home/sexy_zone'
  get 'home/v6'
  get 'home/tackey_and_tsubasa'
  # ここからエグザイル
  get 'home/exile_atsushi'
  get 'home/exile'
  get 'home/t_second'
  get 'home/egirls'
  get 'home/generations'
  get 'home/jsoulbrothers'
  get 'home/dream'
  get 'home/exile_takahiro'
  get 'home/high_low'
  # グループバンド
  get 'home/dreams_come_true'
  get 'home/ketsumeishi'
  get 'home/spitz'
  get 'home/every_little_thing'
  get 'home/uverworld'
  get 'home/ikimonogakari'
  get 'home/thehiatus'
  get 'home/yunizon_gerden'
  #  男性ソロ
  get 'home/oda_kazumasa'
  get 'home/shimizu_shota'
  get 'home/hamada_shogo'
  get 'home/tm_revolution'
  get 'home/akanishi_jin'
  get 'home/tokunaga_hideaki'
  # 女性ソロ
  get 'home/nishino_kana'
  get 'home/ohara_sakurako'
  get 'home/aiko'
  get 'home/kouda_kumi'
  get 'home/kyarypamyupamyu'
  get 'home/amuro_namie'
  get 'home/ayaka'
  get 'home/ieiri_reo'
  get 'home/ai'
  get 'home/fujiwara_sakura'
  get 'home/ootuka_ai'
  get 'home/ooguro_maki'
  get 'home/oosima_yuko'
  get 'home/kimura_kaera'
  get 'home/hamasaki_ayumi'
  get 'home/nakasima_mika'
  get 'home/nakamura_ayumi'
  # クラシック
  get 'home/hisaishi_joe'
  get 'home/ozawaseiji'
  get 'home/wiener_staatsoper'
  get 'home/tujii_nobuyuki'
  get 'home/tpo'
  get 'home/takashima_chisako'
  get 'home/nhkso'
  get 'home/ushida_mitsuko'
  # ジャズ・フージョン
  get 'home/chie_ayado'
  get 'home/uehara_hiromi'
  get 'home/kokubu_hiroko'
  get 'home/akiko'
  get 'home/nose_eishin'
  get 'home/yamashitayosuke'
  # 声優・アニメ
  get 'home/t7s'
  get 'home/hatsunemiku'
  get 'home/mimori_suzuko'
  get 'home/uchida_aya'
  get 'home/ogura_yui'
  get 'home/fripside'
  get 'home/kaji_yuki'
  get 'home/amamiya_sora'
  # アイドル
  get 'home/nogizaka46'
  get 'home/akb48'
  get 'home/babymetal'
  get 'home/morning_musume'
  get 'home/hello_project'
  get 'home/dempagumi'
  get 'home/shiritsu_ebisu_chugaku'
  get 'home/keyakizaka_46'
  get 'home/momoclo'
  get 'home/buono'
  get 'home/nigaki_risa'
  get 'home/hkt48'
  get 'home/ske48'
  get 'home/nmb48'
  get 'home/ngt48'
  get 'home/team_syachihoko'
  get 'home/tokyo_girls_style'
  #  演歌
  get 'home/hikawa_kiyoshi'
  get 'home/ituki_hirosi'
  get 'home/kitajima_saburo'
  get 'home/yasiro_aki'
  get 'home/kobayasi_sachiko'
  get 'home/shinno_mika'
  # 海外
  # 韓流・アジア
  get 'home/exo'
  get 'home/bts'
  get 'home/blockb'
  get 'home/infinite'
  get 'home/sj_yesung'
  get 'home/seventeen'
  get 'home/lee_jong_hyun'
  get 'home/ikon'
  get 'home/ftisland'
  get 'home/junho'
  # グループバンド
  get 'home/queen'
  get 'home/michael_schenker'
  get 'home/ewf'
  get 'home/weezer'
  get 'home/extreme'
  get 'home/yes'
  get 'home/suede'
  get 'home/macklemoreryankewis'
  # 男性ソロ
  get 'home/justin'
  get 'home/chris_brown'
  get 'home/ringo_starr'
  get 'home/zayn_malik'
  get 'home/kid_ink'
  get 'home/chris_hart'
  get 'home/elviscostello'
  get 'home/maxwell'
  # 女性ソロ
  get 'home/selena_gomez'
  get 'home/sutton_foster'
  get 'home/alexandra_stan'
  get 'home/mo'
  get 'home/carly_rae_jepsen'
  get 'home/chenelle'
  #  クラシック
  get 'home/vienna_philharmonic'
  get 'home/wps'
  get 'home/wos'
  get 'home/yo_yo_ma'
  get 'home/brso'
  get 'home/alice_sara_ott'
  get 'home/orchestre_de_paris'
  # ジャズ・フュージョン
  get 'home/kamasi_washington'
  get 'home/atomic'
  get 'home/jaga_jazzist'
  get 'home/richard_bona'
  get 'home/lee_ritenour'

  # 音楽イベント・フェス
  # ゲーム・声優イベント
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'
  # get 'home/'

  # 遊園地・テーマパーク
  get 'home/ghibli_museum'
  get 'home/snoopy'
  get 'home/puroland'
  get 'home/usj'
  get 'home/tdl_land'
  get 'home/tdl_sea'
  # キッズ・ファミリー
  get 'home/okaasan'
  get 'home/shimajiro'
  get 'home/anpanman'
  get 'home/garapiko'
  get 'home/smile_precure'
  # 舞台挨拶
  # その他イベント
  get 'home/cirquedusoleil'
  get 'home/u_fes'
  get 'home/ikeda_elaiza'
  get 'home/daradara'
  get 'home/game_broadcast'
  get 'home/suchmos'

  # 演劇・ミュージカル
  # ジャニーズ舞台
  get 'home/dreamboys'
  get 'home/johnnys_world'
  get 'home/en'
  get 'home/cross_heart'
  get 'home/shonen'
  get 'home/jugatsu_hanagata_kabuki'
  get 'home/kokusen_yakassen'
  # 宝塚
  get 'home/elisabeth'
  get 'home/nobunaga_geten'
  get 'home/oukanimae'
  get 'home/romanesque'
  get 'home/valencia'
  get 'home/king_arthur'
  get 'home/bow_workshop'
  get 'home/sagiri_seina'
  # 劇団四季
  get 'home/aladdin'
  get 'home/west_side_story'
  get 'home/wicked'
  get 'home/operaza_no_kaijin'
  get 'home/cats'
  get 'home/lionking'
  get 'home/little_mermaid'
  get 'home/mamma_mia'
  get 'home/bijyo_to_yajyu'
  # 2.5次元ミュージカル
  get 'home/tennimu'
  get 'home/kochikame'
  get 'home/osomatsusan'
  get 'home/biohazard'
  get 'home/tohken'
  # 歌舞伎・伝統芸能
  get 'home/shinosuke'
  get 'home/ichikawa_ebizo'
  get 'home/utamaru'
  get 'home/dansyun'
  get 'home/sanyutei_koraku'
  get 'home/daikabuki'
  # お笑いライブ
  get 'home/sandwichman'
  get 'home/egu_splosion'
  get 'home/ngklive'
  get 'home/non_style'
  get 'home/yoshimoto_manzai_rakugo'
  get 'home/nakagawake'
  get 'home/tsurube'
  get 'home/shinkigeki'
  # その他・演劇・ミュージカル
  get 'home//musical_elisabeth'
  get 'home/gekidan_shinkansen'
  get 'home/kinky_boots'
  get 'home/shounen'
  get 'home/scarlet_pimpernel'
  get 'home/miss_saigon'
  # スポーツ
  # サッカー
  get 'home/fifa_worldcup'
  get 'home/reisoru'
  get 'home/fctokyo'
  get 'home/ganbaoosaka'
  get 'home/kasima'
  get 'home/kawasaki'
  get 'home/urawarez'
  # 野球
  get 'home/kyojin'
  get 'home/hansin'
  get 'home/yokohama_base'
  get 'home/tokyo_yakuruto'
  get 'home/fukuoka_base'
  get 'home/chunichi_base'
  get 'home/nichihamu_base'
  get 'home/hirosimaka_pu'
  # テニス
  get 'home/japanopen'
  get 'home/rakutenopen'
  get 'home/tore'
  # スケート
  get 'home/takahasi_daisuke'
  get 'home/asada_mao'
  get 'home/ando_miki'
  get 'home/disney_on_ice'
  get 'home/japan_open_ice'
  get 'home/arakawa_sizuka'
  # モータースポーツ
  get 'home/motogp'
  get 'home/f1_tickets'
  # 格闘技
  get 'home/g1_climax'
  get 'home/njpw'
  get 'home/wpb'
  get 'home/dragongate'
  get 'home/k_1wg'
  get 'home/ddt_pro'
  # 相撲
  get 'home/sumou'

  # お知らせ画面


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
