class SongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end

  def show
    @song = get_song
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  # def create
  #   @artist = Artist.find(params[:artist_id])
  #   @song = @artist.songs.create(song_params)
  #   if @song.save
  #     redirect_to_artist_path(@artist)
  #   else
  #     render 'new'
  #   end
  # end

#creating
  def create
  @artist = Artist.find(params[:artist_id])
  @song = Song.create(song_params)
   if @song.save
     #we want to push @song inside of @artist song array
     @artist.songs << @song
     redirect_to artist_path(@artist)
   else
     render 'new'
  end
  end

  def edit
  end

private
    def song_params
      params.require(:song).permit(:title, :length, :genre, :artist_id)
    end

    def get_song
      song.find(params[:id])
    end
end
