Rails.application.routes.draw do

  root to: 'pages#home_es'
  get "espanol", to: "pages#home_es"
  get "english", to: "pages#home_en"
  get "imprint", to: "pages#imprint"
  get "pf", to: "pages#pf"
  get "faq", to: "pages#faq"
  get "rastreador_financiero", to: "pages#rastreador_financiero"
  get "finance_tracker", to: "pages#finance_tracker"
  get "becarios", to: "pages#becarios"
  get "scholars", to: "pages#scholars"


  resources :subscribers

end
