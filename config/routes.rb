Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  post "/graphql", to: "graphql#execute"

  namespace :api do
    namespace :v1 do
      resources :pizzas do
        resources :reviews
        resources :toppings
      end
      resources :toppings
    end
    namespace :v2 do
      resources :pizzas do
        resources :reviews
        resources :toppings
      end
      resources :toppings
    end
  end

  get 'site/index'
  root to: 'site#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
