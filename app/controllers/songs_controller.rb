class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song = Song.update(strong(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new()
  end

  def create
    @song = Song.new(strong(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  private
  def strong(*args)
    params.require(:song).permit(*args)
  end
end
