Rails.application.routes.draw do
  get 'pages/landing'

  root 'pages#landing'

end
