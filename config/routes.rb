Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :players
        post 'players/search', to: 'players#search'
        post 'players/history', to: 'players#history'
    end
  end
end
