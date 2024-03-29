class UsersController < ApplicationController
  def index 
    if params[:query] 
      users = User.where('username like ?', "%#{params[:query]}%")
    else 
      users = User.all  
    end 
    render json: users
  end

  def show 
    user = User.find_by(id: params[:id]) 
    render json: user
  end

  def create 
    user = User.new(user_params) 
    if user.save 
      redirect_to user_url(user) 
    else 
      render json: user.errors.full_messages  
    end 
  end

  def destroy 
    user = User.find_by(id: params[:id]) 
    user.destroy
    render json: user 
  end

  def update 
    user = User.find_by(id: params[:id]) 
    if user.update(user_params) 
      redirect_to user_url(user) 
    else 
      render json: user.errors.full_messages, status: :unprocessable_entity
    end 
  end


  private 

  def user_params 
    params.require(:user).permit(:username) 
  end 

end
