Rails.application.routes.draw do
  root to: 'pages#home'
  resources :greetings
  get '/show' => 'greetings#show'
end
