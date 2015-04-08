Rails.application.routes.draw do
  devise_for :users #:controllers => { registrations: 'registrations' }

  devise_scope :user do
    authenticated :user do
      root 'textbooks#index', as: :authenticated_root 
    end
    unauthenticated do
      root 'devise/registrations#new', as: :unauthenticated_root 
    end
  end

  get '/search' => 'search#search'
  get '/change_book' => 'textbooks#change_book'
  post '/phone' => 'textbooks#phone_number'
  get '/phone'  => 'textbooks#phone'
  post '/upload_book' => 'textbooks#upload_book'
  get '/upload' => 'textbooks#upload', as: 'books_path'
  get '/'  => 'textbooks#index'
  get '/preferences' => 'textbooks#preferences'
  get '/new' => 'textbooks#new'
  post '/' => 'textbooks#create'
  put '/' => 'textbooks#update'
  get '/books/:id' => 'textbooks#show'
  post '/add_sentences/:id' => 'textbooks#add_sentences'
  
end
