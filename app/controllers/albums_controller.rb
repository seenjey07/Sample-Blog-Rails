class AlbumsController < ApplicationController
  before_action :set_album, only: [ :show, :edit, :update, :destroy]
  def index
    @albums = Album.order(created_at: :desc).all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to albums_path
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
      redirect_to albums_path
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
      redirect_to albums_path
  end

private
  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:caption, :description)
  end
end

