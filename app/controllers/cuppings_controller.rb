class CuppingsController < ApplicationController
  def new
  	@cupping = Cupping.new
  end

  def create
  	

  	@cupping = Cupping.new(cupping_params)
  	if @cupping.save
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

   private
    def cupping_params
      params.require(:cupping).permit(:memo, :process, :shop, :origin, :flavor_coment)
    end
end
