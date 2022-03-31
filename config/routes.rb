Rails.application.routes.draw do

  resources :albums
  resources :songs

  get 'users/show'
  root 'pages#home'
  get '/pages/texte'

  get '/books', to: 'books#index', as: 'books'
  get '/books/show/:id', to: 'books#show', as: 'show_book'
  get '/books/new', to: 'books#new', as: 'new_book'
  get '/books/edit/:id', to: 'books#edit', as: 'edit_book'
  delete '/books/delete/:id', to: 'books#destroy', as: 'delete_book'
  post '/books/create', as: 'create_book_path'
  patch '/books/update/:id', to: 'books#update', as: 'update_book'

  get '/subjects', to: 'subjects#index', as: 'subjects'
  get '/subjects/show/:id', to: 'subjects#show', as: 'show_subject'
end
