class ArtworksController < ApplicationController
  before_action :set_user, only: [:update, :destroy, :show]
  
  def index  
    artist = User.find(params[:user_id]) 
    render json: { 
      artworks: artist.artworks, 
      shared_works: artist.shared_works,
      comments: artist.comments
    }
  end

  def create
    artwork = Artwork.new(artwork_params) 

    if artwork.save 
      redirect_to artwork_url(artwork) 
    else 
      render json: artwork.errors.full_messages, status: :unprocessable_entity 
    end

  end

  def destroy
    artwork.destroy
    render json: artwork
  end

  def show
    render json: artwork
  end

  def update
    if artwork.update(artwork_params) 
      redirect_to artwork_url(artwork) 
    else 
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end 
  end 

  private 

  def set_user 
    artwork = Artwork.find_by(id: params[:id])
  end 

  def artwork_params 
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end 

end
