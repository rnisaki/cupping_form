class CuppingsController < ApplicationController
  def new
  	@cupping = Cupping.new
  end

  def create
  	puts "!!!!!"
  	puts params
  	puts "!!!!!!"

  	@cupping = Cupping.new(cupping_params)
  	if @cupping.save
      redirect_to @cupping, notice: "登録しました。"
  	else
      render 'new'
    end
  end


  def show
  end

  def edit
  end

   private
    def cupping_params
      params.require(:cupping).permit(:memo, :process, :shop)
    end
end
