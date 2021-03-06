Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'skills/index'

  get 'mentors/index'
  get 'mentors/new'
  get 'mentors/create'
  get 'mentors/destroy'
  post '/check', to: 'skills#check'

  resources :conversations do
      resources :messages
  end

  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}

  get '/upvote', to: 'notes#upvote'

  root 'homepage#index'
  get 'profile/index'

  resources :notes, only: [:index, :new, :create, :destroy, :upvote]

  resources :skills

  namespace :api do
      namespace :v1 do
          resources :conversation, only: [:index, :create, :show, :update, :destroy]
          #resources :user, only: [:index, :create, :show, :update, :destroy]
          scope '/messages' do
              post '/' => 'messages#create'
          end
          scope '/user' do
              get '/' => 'user#index'
              get '/:id' => 'user#show'
              post '/updatescore' => 'user#updatescore'
          end
      end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
