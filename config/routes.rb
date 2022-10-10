Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:index, :show, :create]
end
