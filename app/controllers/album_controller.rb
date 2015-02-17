class AlbumController < ApplicationController
  def index
    @user = User.find(params[:id])
    @albums = @user.albums
  end

  def create
    user = User.find(params[:id])
    Album.create(name: params[:name], user: user)
    redirect_to "/users/#{user.id}/albums"
  end
end
