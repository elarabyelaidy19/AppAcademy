class CollectionsController < ApplicationController
  def index 
    collections = Collection.where(user_id: params[:user_id]) 
    render json: collections  
  end

  def create 
    collection = Collection.new(collection_params) 

    if collection.save 
      render json: collection 
    else 
      render json: collection.errors.full_messages 
    end 

  end

  def show 
    collection = Collection.find_by(id: params[:id]) 
    render json: collection
  end

  def destroy 
    collection = Collection.find_by(id: params[:id])
    collection.destroy 
    render json: collection
  end 


  def add_artwork 
    artwork_collection = ArtworkCollection.new( 
      artwork_id: params[:artwork_id], 
      collection_id: params[:collection_id]
    )

    if artwork_collection.save 
      render json: artwork_collection 
    else 
      render json: artwork_collection.errors.full_messages
    end 
  end 

  def remove_artwork
    artwork_collection = ArtworkCollection.find_by( 
      artwork_id: params[:artwork_id], 
      collection_id: params[:collection_id]
    )
    artwork_collection.destroy
    render json: artwork_collection
  end 

  private 

  def collection_params 
    params.require(:collections).permit(:name, :user_id)
  end 
end
