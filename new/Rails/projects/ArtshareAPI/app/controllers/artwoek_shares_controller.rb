class ArtwoekSharesController < ApplicationController
  def create 
    artwork_share = ArtwoekShare.new(artwoek_shares_params) 

    if artwork_share.save 
      redirect_to artwoek_share_url(artwoek_share) 
    else 
      render json: artwork_share.errors.full_messages 
    end 

  end

  def destroy
    artwork_share = ArtwoekShare.find_by(id: params[:id]) 
    artwoek_share.destroy 

    render json: artwork_share
  end

  def artwoek_shares_params 
    params.require(:artwoek_share).permit(:artwork_id, :viewer_id)
  end 
end
