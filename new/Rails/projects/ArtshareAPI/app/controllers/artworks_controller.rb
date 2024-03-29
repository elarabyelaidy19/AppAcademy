class ArtworksController < ApplicationController
  before_action :set_user, only: [:update, :destroy, :show]
  
  def index  
    # artist = User.find(params[:user_id]) 
    # render json: { 
    #   artworks: artist.artworks, 
    #   shared_works: artist.shared_works,
    #   comments: artist.comments
    # } 

    if params[:user_id] 
      render json: Artwork.artworks_for_user_id(params[:user_id]) 
    elsif  
      render json: Artwork.artworks_for_collection_id(params[:collection_id]) 
    end 
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
  

  
  def like 
    like = Like.new(user_id: params[:user_id], likeable_id: params[:id], likeable_type: "Artwork") 

    if like.save 
      render json: like 
    else 
      render json: like.errors.full_messages 
    end 
  end 

  def unlike 
    like = Like.find_by(user_id: params[:user_id], likeable_id: params[:id], likeable_type: "Artwork") 
    if like.destroy 
      render json: like 
    else 
      render json: like.errors.full_messages
    end 
  end  


  def favorite 
    artwork = Artwork.find_by(id: params[:id], artist_id: params[:user_id]) 
    artwork.favorite = true
    artwork.save 
    render json: artwork
  end 

  def unfavorite
    artwork = Artwork.find_by(id: params[:id], artist_id: params[:user_id]) 
    artwork.favorite = false 
    artwork.save 

    render json: artwork
  end 

  private 

  def set_user 
    artwork = Artwork.find_by(id: params[:id])
  end 

  def artwork_params 
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end 

end
