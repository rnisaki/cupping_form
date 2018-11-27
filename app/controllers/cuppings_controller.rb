class CuppingsController < ApplicationController
  def new
  	@cupping = Cupping.new
  end

  def create
  	@cupping = Cupping.new(cupping_params)
  	if @cupping.save
      #クッキーの作成
      cookies["cupping_" + @cupping.id.to_s] = "1" 
      #クッキーの表示(ターミナルにでてきます)
      puts cookies["cupping_" + @cupping.id.to_s]
      redirect_to @cupping, notice: "登録しました。"
  	else
      render 'new'
    end
  end


  def show
    @cupping = Cupping.find(params[:id])
  end

  def edit
    @cupping = Cupping.find(params[:id])
  end

  def update
    @cupping = Cupping.find(params[:id])
    @cupping.update(cupping_params)
    redirect_to @cupping
  end

  def index

    #自分のつくった全てのcuppingをクッキーから取り出し、そのcuppingのid番号を入れる配列を作る
    array = []

    #とりあえず全てのクッキーを回す
    cookies.each do |cookie|

      # cokkieのキーがcupping_から始まるもの && 無駄にヒットしてしまったものを正規表現で削除
      if cookie[0] =~ /cupping_/ && cookie[0] !~ /cupping_form_session/

        #cupping_**の**からcupping_idを取得 & 配列に入れ、あとでわかるようにする
        array << cookie[0].scan(/cupping_(.+)/)[0]

      end
    end

    #今の時点で"array"は2次元配列(例:[["15"], ["16"], ["17"], ["19"]])になっているので、扱いやすいよう1次元(例:["15","16","17","19"])にする
    array.flatten! #(flattenは次元を下げるメソッドです)

    #whereのid検索で配列を使用して複数検索&新しいものが上に並ぶよう、orderとcreated_at DESCで降順ソート
    @cuppings = Cupping.where(id: array).order("created_at DESC")

  end

   private
    def cupping_params
      params.require(:cupping).permit(:memo, :process, :shop, :origin, :flavor_coment)
    end
end
