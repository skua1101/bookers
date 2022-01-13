Rails.application.routes.draw do
  get 'books/new'
  get 'books'=>'books#index'
  post 'books'=> 'books#create'
  get 'books/:id'=>'books#show',as:'book'
  get 'books/:id/edit'=> 'books#edit',as:'edit_book'
  patch 'books/:id'=>'books#update',as:'update_book'
  delete 'lists/:id'=>'lists#destroy',as:'destroy_book'
  get '/top'=>"homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
