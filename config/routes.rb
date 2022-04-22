Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/category", to: "category#index"
  get "/photo", to: "photo#index"
  # creo que deberiamos tener un 
  get "/category-edit", to: "category#edit_category"

  # Defines the root path route ("/")
  # root "articles#index"
end
