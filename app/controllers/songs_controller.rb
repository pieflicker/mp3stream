class SongsController < ApplicationController
  before_filter :ensure_logged_in
  def index
    if params[:id]
      @playersong = Song.find(params[:id])
    end
   

  	@songs = current_user.songs

  	@song = Song.new
  end

  def new
  	@song = Song.new
  end

  def create
    @song = current_user.songs.build(song_params)

    if @song.save
      redirect_to songs_path, notice: "#{@song.name} has been uploaded."
    else
      render "new"
    end
  end


  def upload
  	
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path, notice:  "#{@song.name} has been deleted."
  end


	private
  	def song_params
    	params.require(:song).permit(:name, :attachment)
  	end

  

end

