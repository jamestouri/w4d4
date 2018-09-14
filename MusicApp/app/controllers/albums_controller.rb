class AlbumsController < ApplicationController

  def index
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      @album.errors.full_messages
      render :new
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  private

  def album_params
    params.require(:album).permit(:band_id, :title, :year, :studio)
  end
end
