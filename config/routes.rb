Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  post "/graphql", to: "graphql#execute"

  namespace :api do
    namespace :v1 do
      resources :pizzas, only: [:index, :show] do
        resources :reviews, only: [:index, :show, :create]
        resources :toppings, only: [:index, :show]
      end
      resources :toppings, only: [:index, :show]
    end
    namespace :v2 do
      resources :pizzas, only: [:index, :show] do
        resources :reviews, only: [:index, :show]
        resources :toppings, only: [:index, :show]
      end
      resources :toppings, only: [:index, :show]
    end
  end

  get 'site/index'
  root to: 'site#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
