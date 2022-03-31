class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

    def new
      @song = Song.new
    end

  def create
     @song = Song.new(song_params)
     if @song.save
       redirect_to action: "index"
     else
       render action: "new"
       end
     end

    def song_params
       params.require(:song).permit(:band, :title, :year)
      end

    def edit
      @song = Song.find(params[:id])
    end

    def update
      @song = Song.find(params[:id])
      if @song.update(song_params)
        redirect_to action: "index"
      else
        @songs = Song.all render action: "edit"
    end
  end

    def destroy
      @song = Song.all
  end
  end

end
