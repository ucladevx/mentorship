Rails.application.routes.draw do

  get 'mentors/index'

  get 'mentors/new'

  get 'mentors/create'

  get 'mentors/destroy'

  get 'tutorials/index'

  get 'tutorials/new'

  get 'tutorials/create'

  get 'tutorials/destroy'

  devise_for :users
  get '/upvote', to: 'notes#upvote'
  # get 'notes/new'
  #
  # get 'notes/create'
  #
  # get 'notes/destroy'
  #
  # get 'notes/index'


  root 'homepage#index'

  resources :notes, only: [:index, :new, :create, :destroy, :upvote]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
