Rails.application.routes.draw do

  root to: 'pages#home_es'
  get "espanol", to: "pages#home_es"
  get "english", to: "pages#home_en"
  get "imprint", to: "pages#imprint"
  get "pf", to: "pages#pf"
  get "faq", to: "pages#faq"

  resources :subscribers

end
