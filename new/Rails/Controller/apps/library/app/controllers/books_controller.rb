class BooksController < ApplicationController 
    def index 
        @books = Book.all 
        # render json: books
    end 

    def show 
        @book = Book.find_by(id: params[:id]) 
        # render json: book 
        if @book 
            render :show 
        else 
           redirect_to books_url
        end
    end  


    def new 
        book = Book.new
    end 

    def create 
        @book = Book.new(book_params)
        if @book.save 
            redirect_to book_url(@book)
        else 
            render :new 
        end
    end 


    def edit 
        @book = Book.find_by(id: params[:id]) 

    end 

    def update
        @book = Book.find_by(id: params[:id])

        if @book.update(book_params) 
            redirect_to book_url(@book) 
        else 
            render :edit 
        end 
    end 

    private

    def book_params 
        params.require(:book).permit(:title, :author, :year, :category, :description)
    end

end
 


