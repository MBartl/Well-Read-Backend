class Api::V1::FavoritesController < ApplicationController

  def create
    favInDB = Favorite.all.find{|fav| fav.book_id === params[:book_id] && fav.user_id === params[:user_id]}

    favInDB ? fav = favInDB :
    fav = Favorite.create(book_id: params[:book_id], user_id: params[:user_id])

    render json: fav
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy

    render json: favorite
  end

end
