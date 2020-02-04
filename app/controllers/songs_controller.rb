class SongsController < ApplicationController
  def index
    @songs = Song.all 
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.Artist_id)
    @genre = Genre.find(@song.Genre_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:name, :Artist_id, :Genre_id)
  end

end
