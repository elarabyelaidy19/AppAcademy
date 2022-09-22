class BooksController < ApplicationController 
    def index 
        @books = Book.all 
    end 

    def update 
        @book = Book.find(params[:id]) 
        if @book.update(book_params) 
            redirect_to(@book) 
        else 
            render :edit, status: :unpreocessable_entity  
            # render "edit" Or render action: "edit" 
            # render :edit OR render action: :edit 
            # render template: "/books/edit" OR render "books/edit"
        end 
    end 
end 

# routes.rb
 
resources :books
 
# Render 

render plain: "Ok!"