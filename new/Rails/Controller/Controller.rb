get 'superheros', to: 'superheros#index'
get 'superheros/:id', to: 'superheros#show'

post 'superheros', to: 'superheros#create'
patch 'superheros/:id', to: 'superheros#update'

delete 'superheros/:id', to: 'superheros#destroy' 

# this is the same as:
resources :superheros, only: [:index, :show, :create, :update, :destroy]


resources :superheros do 
  resources :powers, only: [:index]
end

resources :powers, only: [:show, :create, :update, :destroy] 




# Delegation

@patient.doctor.name

def doctor_name 
    doctor.name
end 
@patient.doctor_name


delegate :name 
    to: doctor, 
    prefix: true

@patient.doctor_name 



class Magazine 
  has_many :articles 
end 

class Article 
  belongs_to :magazine
end 

# routes.b 
resources :magazines do 
  resources :articles, only: [:index]
end  
resources :articles


class ArticleController 
  def index 
    if params.has_Key?(:magazine_id) 
      @articles = Article.where(magazine_id: params[:magazine_id]) 
    else 
      @articles = Article.all 
    end 

    render json: @articles
  end 
end 