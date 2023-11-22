class AlbumsController < ApplicationController
  before_action :set_album, only: [ :show, :edit, :update, :destroy]
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to albums_path, notice: "Album was successfully created."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to albums_path, notice: 'Album was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @album.destroy
      redirect_to albums_path, notice: 'Album was successfully deleted.'
    else
      redirect_to albums_path, alert: 'Failed to delete the album.'
    end
  end

private
  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:caption, :description)
  end
end

