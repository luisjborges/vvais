Rails.application.routes.draw do

  root to: 'pages#home_en'
  get "espanol", to: "pages#home_es"
  get "english", to: "pages#home_en"
  get "imprint", to: "pages#imprint"

  resources :subscribers

end
