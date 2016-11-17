Rails.application.routes.draw do
  resources :courses, only: [:show, :new, :create]
  resources :courses do
  	resources :lessons, only: [:index, :create, :new, :show, :edit, :destroy] 
  end



  devise_for :users
  get 'pages/landing'

  root 'pages#landing'
  post 'pages/landing', to: 'pages#info_contact'

end
