class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre = Genre.update(strong(:name))
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new()
  end

  def create
    @genre = Genre.new(strong(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  private
  def strong(*args)
    params.require(:genre).permit(*args)
  end
end
