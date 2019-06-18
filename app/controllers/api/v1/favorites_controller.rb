class Api::V1::FavoritesController < ApplicationController

  def create
    favInDB = Favorite.all.find{|fav| fav.book_id === params[:book_id] && fav.user_id === params[:user_id]}

    favInDB ? fav = favInDB :
    fav = Favorite.create(book_id: params[:book_id], user_id: params[:user_id])

    render json: fav
  end
end
