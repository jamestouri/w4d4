class AlbumsController < ApplicationController

  def index
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
  end

  def show

  end

  private

  def album_params
    params.require(:album).permit(:band_id, :title, :year, :studio)
  end
end
