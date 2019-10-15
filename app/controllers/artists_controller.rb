class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  def index
    puts "----> ArtistsController.index"
    puts "----> ArtistsController.index"
   # if params[:search].nil?
   #   @artists = Artist.order(:name).page params[:page]
   # else
   #   @artists = Artist.search(params[:search], params[:page])
   # end
  end

  def new
    @artist = Artist.new()
  end

def all_artists
  puts "----> ArtistsController.all_artists"
  puts "----> ArtistsController.all_artists"

  @artists = Artist.search(params[:search], params[:page])
#  if params[:search].nil?
#    puts "1111"
#    @artists = Artist.order(:name).page params[:page]
#    puts @artists.size
#  else
#    puts "22222"
#    @artists = Artist.search(params[:search], params[:page])
#    puts @artists.size
#  end
end

  def show
    @artist = Artist.find(params[:id])
    #@works = MetObject.where(artist_display_name: @artist.name)
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
        flash[:notice] = "Artist was created!"
        redirect_to artist_path(@artist)
    else
        render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
        flash[:notice] = "Artist was updated!"
        redirect_to artist_path(@artist)
    else
        render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist was deleted"
    redirect_to root_path
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
      params.require(:artist).permit(:name, :description)
  end

  def artist_search_params
    params.requiere(:artist).permit(:search)
  end
end
