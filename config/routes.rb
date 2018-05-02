Rails.application.routes.draw do
  resources :reviews
  # get 'books/index'
  #
  # get 'books/new'
  #
  # get 'books/create'
  #
  # get 'books/edit'
  #
  # get 'books/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books
  root 'books#index'


end
