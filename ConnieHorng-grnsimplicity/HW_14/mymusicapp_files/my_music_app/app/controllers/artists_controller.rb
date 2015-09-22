class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist =Artist.new
  end

  def create
    @artist= Artist.new
  end

  def edit
    @artist= Artist.new
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image_url, :description)
  end
end
