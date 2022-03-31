class AlbumsController < ApplicationController
def index
  @albums = Album.all
end

  def new
    @album = Album.new
  end

def create
   @album = Album.new(album_params)
   if @album.save
     redirect_to action: "index"
   else
     render action: "new"
     end
   end

  def album_params
     params.require(:album).permit(:band, :title, :year)
    end

  def edit
    @album = Book.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to action: "index"
    else
      @songs = Song.all render action: "edit"
  end
end

  def destroy
    @Albums = Album.all
end
end
