class ToysController < ApplicationController

    def index 
        cat = Cat.find(params[:cat_id]) 
        render json: cat.toys
    end 

    def show 
        toy = Toy.find(params[:id]) 
        render json: toy
    end 

    def create 
        
        @toy = Toy.new(self.toys_params) 
        @cat = @toy.cat
        if @toy.save 
            redirect_to cat_url(@cat)
        else    
            render :new
        end 
    end 

    def destroy 
        toy = Toy.find(params[:id]) 
        toy.destroy 
        render json: toy
    end 
    

    def update 
        toy = Toy.find(params[:id]) 
        success = toy.update(self.toys_params)

        if success 
            render json: toy 
        else 
            render json: toy.errors.full_messages
        end  
    end 

    def new 
        @cat = Cat.find(params[:cat_id]) 
        @toy = Toy.new

        render :new
    end 

    private     

    def toys_params 
        self.params[:toy].permit(:name, :toy_type, :cat_id)
    end 
end
