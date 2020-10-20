class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(strong_params(:song, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
    @artists = Artist.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(strong_params(:song, :name, :bio))
    redirect_to song_path(@song)
  end

end
