class SinglesController < ActionController::API
def index
    @singles = Single.all
    render json: {singles:@singles}
end

def show
    artist_id = params[:id]
    @singles = Single.where(artist_id: artist_id)
render json: @singles
end
end