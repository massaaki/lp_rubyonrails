Rails.application.routes.draw do
  get 'pages/landing'

  root 'pages#landing'
  post 'pages/landing', to: 'pages#info_contact'

end
