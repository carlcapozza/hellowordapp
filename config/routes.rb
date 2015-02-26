Rails.application.routes.draw do
	root :to => 'greetings#index'
  resources :greetings
end
