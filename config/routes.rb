Rails.application.routes.draw do
  # ! url"/"にアクセスされたらtopsコントローラーの中にあるindexメソッドを呼び出す。
  get "/", to: "tops#index"
  get "/users", to: "tops#users"
  get "/new", to: "tops#new"
  post "/create", to: "tops#create"
  get "/edit/:id", to: "tops#edit"
  patch "/update/:id", to: "tops#update"
  delete "/destroy", to: "tops#destroy"
end
