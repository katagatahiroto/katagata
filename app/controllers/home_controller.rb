class HomeController < ApplicationController

  def top
    @shops = Shop.order("created_at DESC").limit(7)
    @search = Shop.search(params[:q])
    @shops = @search.result
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @shops }
    # end
  end

  def about
  end

  def payment
  end

  def esukuro
  end


# ジャニーズ
  def kis_my_ft2
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Kis-My-Ft2(キスマイ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def hey_say_jump
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Hey!Say!JUMP').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kanjani8
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '関ジャニ∞').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def abc_z
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'A.B.C-Z').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def yamasita_p
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '山下智久').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
# LDH

  def exile
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'EXILE').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def exile_atsushi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'EXILE ATSUSHI').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def jsoulbrothers
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '三代目 J Soul Brothers').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def t_second
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'THE SECOND from EXILE').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def egirls
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'E-girls(イーガールズ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def generations
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'GENERATIONS(ジェネレーションズ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def high_low
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ハイアンドロー(HiGH＆LOW)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
# グループユニット
  def dreams_come_true
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ドリカム(DREAMS COME TRUE)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def ketsumeishi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ケツメイシ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def spitz
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'スピッツ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def every_little_thing
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ELT(Every Little Thing)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def uverworld
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'UVERworld(ウーバーワールド)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ikimonogakari
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'いきものがかり').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def thehiatus
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'the HIATUS(ハイエイタス)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def yunizon_gerden
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ユニゾンスクエアガーデン(UNISON SQUARE GARDEN)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

# アイドル

   def akb48
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'AKB48').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def nogizaka46
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '乃木坂46').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def team_syachihoko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'チームしゃちほこ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ngt48
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'NGT48').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def nmb48
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'nmb48').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ske48
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ske48').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def buono
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Buono!(ボーノ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end


  def hkt48
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'hkt48').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def nigaki_risa
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '新垣里沙').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def momoclo
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ももクロ(ももいろクローバーZ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def keyakizaka_46
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '欅坂46').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def shiritsu_ebisu_chugaku
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '私立恵比寿中学').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def dempagumi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'でんぱ組.inc').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def hello_project
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ハロプロ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def morning_musume
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'モーニング娘').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def babymetal
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'BABYMETAL(ベビーメタル/ベビメタ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def tokyo_girls_style
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '東京女子流').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

# 男性ソロ

  def  oda_kazumasa
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '小田和正').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def  shimizu_shota
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '清水翔太').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def  hamada_shogo
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '浜田省吾').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def  tm_revolution
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'T.M.Revolution').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def  akanishi_jin
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '赤西仁').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def  tokunaga_hideaki
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '徳永英明').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

# 女性ソロ

  def nishino_kana
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '西野カナ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def ohara_sakurako
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '大原櫻子').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def aiko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'aiko').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kouda_kumi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '倖田來未').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kyarypamyupamyu
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'きゃりーぱみゅぱみゅ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def amuro_namie
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '安室奈美恵').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ayaka
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '絢香').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def ieiri_reo
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '入家レオ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def ai
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'AI(アイ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def fujiwara_sakura
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '藤原さくら').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ootuka_ai
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '大塚愛').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def oosima_yuko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '大島優子').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kimura_kaera
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '木村カエラ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def hamasaki_ayumi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '浜崎あゆみ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def nakasima_mika
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '中島美嘉').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def nakamura_ayumi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '中村あゆみ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  # クラシック

  def hisaishi_joe
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '久石譲').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def ozawaseiji
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '小沢征爾').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def wiener_staatsoper
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ウィーン国立歌劇場').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def tujii_nobuyuki
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '辻井伸行').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def tpo
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '東京フィルハーモニー交響楽団').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def nhkso
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def takashima_chisako
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '高嶋ちさ子').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ushida_mitsuko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '内田光子').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  # ジャズ・フュージョン

  def chie_ayado
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '綾戸智恵').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def uehara_hiromi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '上原ひろみ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kokubu_hiroko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '国府弘子').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def akiko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'akiko').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def nose_eishin
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '野瀬栄進').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def yamashitayosuke
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '山下洋輔').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

# 声優・アニメ

  def t7s
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Tokyo 7th シスターズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def hatsunemiku
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '初音ミク').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def mimori_suzuko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '三森すずこ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def uchida_aya
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '内田彩').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def ogura_yui
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '小倉唯').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def fripside
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'fripSide(フリップサイド)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kaji_yuki
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '梶裕貴').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def amamiya_sora
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '雨宮天').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  # 演歌

  def hikawa_kiyoshi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '氷川きよし').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

   def ituki_hirosi
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '五木ひろし').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kitajima_saburo
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '北島三郎').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def yasiro_aki
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '八代亜紀').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def kobayasi_sachiko
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '小林幸子').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

  def shinno_mika
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '神野美伽').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

# 海外
# 韓流・アジア
 def exo
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'EXO(エクソ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def bts
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'BTS(防弾少年団)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def blockb
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Block B(ブロックビー)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def infinite
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'INFINITE(インフィニット)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def sj_yesung
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'イェソン(YESUNG)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def seventeen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'SEVENTEEN(セブンティーン)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def lee_jong_hyun
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Lee Jong Hyun(イ・ジョンヒョン)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def ikon
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'iKON(アイコン)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def ftisland
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'FTISLAND(エフティアイランド)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
 end
 def junho
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ジュノ(JUNHO)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# グループバンド

def  queen
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'QUEEN(クイーン)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  michael_schenker
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'マイケルシェンカー(MICHAEL SCHENKER)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ewf
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'EARTH WIND&FIRE(アース ウインド&ファイヤー)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  weezer
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'WEEZER(ウィーザー)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  extreme
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'EXTREME(エクストリーム)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  yes
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Yes').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  suede
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Suede（スウェード）').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  macklemoreryankewis
 @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Macklemore & Ryan Lewis（マックルモア＆ライアン・ルイス）').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# 男性ソロ

def  justin
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ジャスティンビーバー').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  chris_brown
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'クリス・ブラウン').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ringo_starr
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'リンゴスター').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  zayn_malik
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ゼインマリク').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  kid_ink
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Kid Ink(キッドインク)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  chris_hart
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'クリスハート').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  elviscostello
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'エルヴィス・コステロ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  maxwell
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'マックスウェル').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# 女性ソロ

def  selena_gomez
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'セレーナゴメス').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  sutton_foster
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'SUTTON FOSTER(サットンフォスター)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

def  mo
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'MO(ムー)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  alexandra_stan
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'アレクサンドラスタン(Alexandra Stan)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  carly_rae_jepsen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'カーリーレイジェプセン(CARLY RAE JEPSEN）').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  chenelle
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Che’Nelle(シェネル)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end  

#  クラシック

def  vienna_philharmonic
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ウィーン・フィルハーモニー管弦楽団').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  wps
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ワールド・ピアニスト・シリーズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  wos
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ワールド・オーケストラ・シリーズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  yo_yo_ma
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ヨーヨー・マ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  brso
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'バイエルン放送交響楽団').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

def  alice_sara_ott
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'アリス＝紗良・オット').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  orchestre_de_paris
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'パリ管弦楽団').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end  

# ジャズ・フュージョン

def  kamasi_washington
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'KAMASHI WASHINGTON(カマシ・ワシントン)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  atomic
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'アトミック(ATOMIC)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  jaga_jazzist
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ジャガ・ジャジスト').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  richard_bona
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'RICHARD BONA(リチャード・ボナ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  lee_ritenour
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Lee Ritenour(リー・リトナー)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

 # 音楽イベント・フェス
  # ゲーム・声優イベント

  # 遊園地・テーマパーク

def  ghibli_museum
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '三鷹の森ジブリ美術館').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  snoopy
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'スヌーピーミュージアム').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  puroland
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'サンリオピューロランド').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  usj
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'USJ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  tdl_land
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '東京ディズニーランド').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  tdl_sea
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '東京ディズニーシー').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# キッズ・ファミリー

def  okaasan
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'おかあさんといっしょ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  shimajiro
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'しまじろうコンサート2016').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  anpanman
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'それいけ!アンパンマン ミュージカル').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  garapiko
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'おかあさんといっしょ ガラピコぷ～がやってきた!!').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  smile_precure
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'プリキュア ミュージカル').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end  

# 舞台挨拶
# その他イベント

def  cirquedusoleil
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'シルクドゥソレイユ(トーテム)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  u_fes
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'U-FES').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ikeda_elaiza
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '池田エライザ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  daradara
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '藤原竜也 山本裕典 出演舞台 鱈々(だらだら)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  game_broadcast
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ゲーム実況').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  suchmos
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Suchmos(サチモス)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

 # 演劇・ミュージカル
 # ジャニーズ舞台

def  dreamboys
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ドリームボーイズ(ドリボ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  johnnys_world
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ジャニーズ・フューチャー・ワールド').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  en
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ふぉ〜ゆ〜 主演舞台 縁 むかしなじみ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  cross_heart
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ミュージカル「クロスハート」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  shonen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '少年たち').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  jugatsu_hanagata_kabuki
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '十月花形歌舞伎 GOEMON(今井翼出演)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  kokusen_yakassen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '佐藤アツヒロ主演『新版 国性爺合戦』').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# 宝塚

def  elisabeth
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'エリザベート 愛と死の輪舞').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  nobunaga_geten
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'NOBUNAGA 信長 下天の夢').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  oukanimae
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '宝塚星組『桜華に舞え』『ロマンス！！（Romance）』').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  romanesque
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '宝塚花組『仮面のロマネスク』『Melodia－熱く美しき旋律－』').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  valencia
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '宝塚宙組 『バレンシアの熱い花』『HOT EYES!!』').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  king_arthur
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '宝塚月組『アーサー王伝説』').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  bow_workshop
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '宝塚『Bow Singing Workshop』シリーズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  sagiri_seina
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '早霧 せいな(サギリセイナ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

 # 劇団四季
   def  aladdin
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「アラジン」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  west_side_story
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「ウェストサイド物語」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  wicked
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「ウィキッド」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  operaza_no_kaijin
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「オペラ座の怪人」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  cats
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「キャッツ」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  lionking
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「ライオンキング」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  little_mermaid
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「リトルマーメイド」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  mamma_mia
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「マンマ・ミーア！」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end
   def  bijyo_to_yajyu
     @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '劇団四季「美女と野獣」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
   end

  # 2.5次元ミュージカル

def  tennimu
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'テニミュ(テニスの王子様)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  kochikame
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '舞台版「こちら葛飾区亀有公園前派出所」(こち亀)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  osomatsusan
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'おそ松さん').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  biohazard
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ミュージカル バイオハザード～ヴォイス・オブ・ガイア～').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  tohken
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '刀剣乱舞(とうらぶ)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end  # 歌舞伎・伝統芸能

def  shinosuke
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '立川志の輔').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ichikawa_ebizo
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '市川海老蔵').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  utamaru
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '桂歌丸').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  dansyun
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '立川談春').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  sanyutei_koraku
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '三遊亭好楽').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  daikabuki
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '松竹大歌舞伎').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# お笑い

def  sandwichman
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'サンドウィッチマン').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  egu_splosion
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'エグスプロージョン').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ngklive
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'なんばグランド花月').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  non_style
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'NON STYLE(ノン・スタイル)').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  yoshimoto_manzai_rakugo
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  nakagawake
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '中川家').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  tsurube
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '鶴瓶噺').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  shinkigeki
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '吉本新喜劇').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# その他・演劇・ミュージカル

def  musical_elisabeth
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'エリザベート ミュージカル').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  gekidan_shinkansen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '生田斗真主演 劇団☆新感線 『ヴァン・バン・バーン』（Vamp bamboo Burn）').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  kinky_boots
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ブロードウェイ・ミュージカル「キンキーブーツ」').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  shounen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '舞台『娼年』').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  scarlet_pimpernel
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ミュージカル スカーレット・ピンパーネル').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  miss_saigon
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ミス・サイゴン').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# スポーツ
# サッカー


def  fifa_worldcup
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'FIFAロシアワールドカップ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  reisoru
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '柏レイソル').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  fctokyo
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'FC東京').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ganbaoosaka
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ガンバ大阪').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  kasima
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '鹿島アントラーズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  kawasaki
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '川崎フロンターレ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  urawarez
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '浦和レッズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# 野球

  def kyojin
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '巨人戦 読売ジャイアンツ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def hansin
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '阪神タイガース').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def yokohama_base
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '横浜ベイスターズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def tokyo_yakuruto
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '東京ヤクルトスワローズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def fukuoka_base
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '福岡ソフトバンクホークス').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def chunichi_base
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '中日ドラゴンズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def nichihamu_base
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '北海道日本ハムファイターズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end
  def hirosimaka_pu
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '広島東洋カープ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# テニス
def  japanopen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'Japan Women’s Open Tennis').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  rakutenopen
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '楽天ジャパンオープンテニス').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  tore
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '東レ パン パシフィック オープンテニス').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

def  takahasi_daisuke
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '高橋大輔').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  asada_mao
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '浅田真央').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ando_miki
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '安藤美姫').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  disney_on_ice
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ディズニーオンアイス').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  japan_open_ice
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'フィギュアスケート ジャパンオープン2016').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  arakawa_sizuka
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '荒川静香').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

# モータースポーツ
def  motogp
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'MotoGP 日本グランプリ 2016').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  f1_tickets
  @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '2016 FIA F1世界選手権シリーズ').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
# 相撲
  def sumou
    @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '大相撲').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

 # 格闘技
def  g1_climax
   @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'G1 CLIMAX').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  njpw
   @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => '新日本プロレス').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  wpb
   @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ワールドプレミアムボクシング').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  dragongate
   @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'ドラゴンゲート').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  k_1wg
   @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'K-1WORLD GP 2016').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end
def  ddt_pro
   @shops = Shop.all.order("price DESC")
    @search = Shop.search(params[:q])
    @shops = Shop.search(:airt_name_cont => 'DDTプロレスリング').result.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
end

end


