class AlbumsController < ActionController::API
def index
    @albums = Album.all
    render json: { albums: @albums }
   end
   def show
    artist_id = params[:id]
    @albums = Album.where(artist_id: artist_id)
    render json: @albums
      end
    end