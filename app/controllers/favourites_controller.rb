class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourites
  end
  def create
    favourite = current_user.favourites.create(blog_id: params[:blog_id])
    redirect_to blogs_path, notice: "Liked"
  end
  def destroy
    current_user.favourites.find_by(id: params[:id]).destroy
    redirect_to blogs_path, notice: "Unliked"
  end
end
