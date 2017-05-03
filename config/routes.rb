Rails.application.routes.draw do

  root 'homepage#index'

  resources :notes, only: [:index, :new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
