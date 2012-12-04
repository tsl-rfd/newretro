Retros::Application.routes.draw do
  
  resources :retros
  
  root to: 'retros#index'
  
  resources :items

  get '/welcome' => 'pages#home', :as => :welcome
  
end
