Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "home_page#index"
    get "/index", to: "home_page#index"
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    get "/product", to: "product#new"
    delete "/logout", to: "sessions#destroy"

    resources :categories, only: %i(index show)
    resources :products, only: %i(index show)
  end
end
