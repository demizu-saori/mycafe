class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname= current_user.nickname
    @cafedrinks = user.cafedrinks.page(params[:page]).per(5).order("created_at DESC")
  end
end
