class ArtistsController < ActionController::API
    def index
     @artists = Artist.all
     
     render json: { artists: @artists }
    end
    def show
        artist = Artist.find(params[:id])
        artist_albums = artist.albums
        artist_singles = artist.singles
        render json: { artist: artist, albums: artist_albums, singles:artist_singles }
       end
end