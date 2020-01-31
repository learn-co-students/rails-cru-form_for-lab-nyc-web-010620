class ArtistsController < ApplicationController
  def index
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def create
    #come back and make strong params
    byebug
    @artist = Artist.Create(FILL IN AFTER BYEBUG)
  end

  def edit
  end

  def update
  end
end
