Rails.application.routes.draw do

  get "/pages/about" => "pages#about", as: :about
  get "/pages/contact" => "pages#contact", as: :contact
  
  get "/posts" => "posts#index", as: :index
  post "/posts" => "posts#create"
  
  get "/post/:id" => "posts#show", as: :post
  patch "/post/:id" => "posts#update"
  delete "/post/:id" => "posts#destroy"

  get "/posts/new" => "posts#new", as: :new_post
  
  get "post/:id/edit" => "posts#edit", as: :edit_post


  end
