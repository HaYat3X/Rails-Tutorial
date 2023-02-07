Rails.application.routes.draw do
  get "/", to: "tops#index"
  get "/users", to: "tops#users"
  get "/new", to: "tops#new"
  post "/create", to: "tops#create"
  get "/edit/:id", to: "tops#edit"
  patch "/update/:id", to: "tops#update"
  delete "/destroy/:id", to: "tops#destroy"
end
