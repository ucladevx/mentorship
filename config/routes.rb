Rails.application.routes.draw do

  devise_for :users
  # get 'notes/new'
  #
  # get 'notes/create'
  #
  # get 'notes/destroy'
  #
  # get 'notes/index'


  root 'homepage#index'

  resources :notes, only: [:index, :new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
