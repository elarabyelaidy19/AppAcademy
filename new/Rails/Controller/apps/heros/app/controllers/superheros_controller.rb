class SuperherosController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index
    render json: Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id]) 
    render json: @superhero
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      render json: @superhero
    else
      render 'new'
    end
  end

  def edit
    @superhero = Superhero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    if @superhero.update(superhero_params)
      render json: @superhero
    else
      render 'edit'
    end
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    if @superhero.destroy 
      render json: @superhero 
    else 
      render json: @superhero.errors, status: :unprocessable_entity 
    end 
    
  end

  private
    def superhero_params
      params.require(:superhero).permit(:name, :superpower, :secret_identity)
    end
end