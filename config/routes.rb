Rails.application.routes.draw do
  root to: 'top#top'
  get "home/about" => "top#show"

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update, :new]
  resources :books, only: [:index, :show, :edit, :update, :destroy, :create, :new]
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
