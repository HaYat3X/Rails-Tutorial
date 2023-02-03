Rails.application.routes.draw do
  # ! url"/"にアクセスされたらtopsコントローラーの中にあるindexメソッドを呼び出す。
  get "/", to: "tops#index"
end
