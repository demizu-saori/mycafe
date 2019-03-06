class CafedrinkController < ApplicationController
  before_action:move_to_index, except: :index
  def index
    @cafedrinks = Cafedrink.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @cafedrink = Cafedrink.new
  end

  def create
    Cafedrink.create(name: cafedrink_params[:name], price: cafedrink_params[:price], place: cafedrink_params[:place], image: cafedrink_params[:image], memo: cafedrink_params[:memo], user_id: current_user.id)
  end

  def destroy
    cafedrink = Cafedrink.find(params[:id])
    cafedrink.destroy if cafedrink.user_id == current_user.id
  end

  def edit
    @cafedrink = Cafedrink.find(params[:id])
  end

  def update
    cafedrink = Cafedrink.find(params[:id])
    if cafedrink.user_id == current_user.id
        cafedrink.update(cafedrink_params)
    end
  end

  def show
    @cafedrink = Cafedrink.find(params[:id])
  end


  private
  def cafedrink_params
    params.require(:cafedrink).permit(:name, :price, :place,:image, :memo, :star)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
