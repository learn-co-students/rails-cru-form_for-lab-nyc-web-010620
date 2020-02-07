class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist = Artist.update(strong(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def new
    @artist = Artist.new()
  end

  def create
    @artist = Artist.new(strong(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end


  private
  def strong(*args)
    params.require(:artist).permit(*args)
  end
end
