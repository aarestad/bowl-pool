Rails.application.routes.draw do
  resources :bowl_matchups
  resources :bowl_games
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
