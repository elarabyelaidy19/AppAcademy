class BooksController < ApplicationController
  protect_from_forgery 
  def index 
    @books = Book.all
  end

  def update 
    @book = Book.find(params[:id]) 
    if @book.update(book_params) 
      redirect_to book_url(@book) 
    else 
      render :edit 
    end 
  end

  def edit 
    @book = Book.new 
    render :edit
  end 


  def new 
    @books = Book.all
    #  render inline: "<% @books.each do |b| %><%= b.name %></p><% end %>"
    # render html: helpers.tag.strong('Not found') 
    # render json: @books 
    #render file: "#{Rails.root}/public/404.html", layout: false
    # render status: 500 
    redirect_to books_url
  end

  private 

  def book_params 
    params[:book].permit(:name, :author)
  end 
end
