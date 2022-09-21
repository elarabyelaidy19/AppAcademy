class CatsController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index 
    @cats = Cat.all 
    render :index
  end

  def show 
    @cat = Cat.find(params[:id]) 
    render :show
  end

  def new  
    @cat = Cat.new
    render :new
  end 

  def create  
    @cat = Cat.new(cat_params) 
    if @cat.save 
      redirect_to cat_url(@cat)
    else   
      render :new
      # render json: @cat.errors.full_messages, statues: 301 
    end 
  end


  def edit 
    @cat = Cat.find(params[:id]) 
    render :edit
  end 

  def update 
    @cat = Cat.find(params[:id]) 
    if @cat.update(cat_params) 
      redirect_to cat_url(@cat) 
    else 
      render :edit 
    end 
  end 
  
  
  def destroy 
    @cat = Cat.find(params[:id]) 
    @cat.destroy 
    redirect_to cats_url
  end  


  private 

  def cat_params
    params[:cat].permit(:name, :skill)
  end 
end
