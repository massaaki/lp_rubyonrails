Rails.application.routes.draw do
  devise_for :users
  get 'pages/landing'

  root 'pages#landing'
  post 'pages/landing', to: 'pages#info_contact'

end
