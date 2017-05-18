Rails.application.routes.draw do
  get 'mentors/index'
  get 'mentors/new'
  get 'mentors/create'
  get 'mentors/destroy'
  get 'tutorials/index'
  get 'tutorials/new'
  get 'tutorials/create'
  get 'tutorials/destroy'

  resources :conversations do
      resources :messages
  end

  devise_for :users
  get '/upvote', to: 'notes#upvote'

  root 'homepage#index'

  resources :notes, only: [:index, :new, :create, :destroy, :upvote]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
