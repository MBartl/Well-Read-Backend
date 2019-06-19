class Api::V1::FavoritesController < ApplicationController

  def create
    favInDB = Favorite.all.find{|fav| fav.book_id === params[:book_id] && fav.user_id === params[:user_id]}

    favInDB ? fav = favInDB :
    fav = Favorite.create(book_id: params[:book_id], user_id: params[:user_id])

    render json: fav
  end

  def update
    fav = Favorite.find(params[:id])


    fav.tags ?
      fav.tags += ', ' + params[:favorite][:tags]
      :
      fav.tags = params[:favorite][:tags]

    fav.save

    render json: fav
  end

  def destroy
    fav = Favorite.find(params[:id])
    fav.destroy

    render json: fav
  end

end
