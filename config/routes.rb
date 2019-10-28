Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get "/", to: "pages#home", as: "root"
  get "/products", to: "products#index", as: "products"
  post "/products", to: "products#create"
  
  get "/products/new", to:"products#new", as: "new_product"
  get "/products/:id", to: "products#show", as: "product"
  put "/products/:id", to:"products#update"
  patch "/products/:id", to:"products#update"
  get "/products/:id/edit", to:"products#edit", as: "edit_product"
  #for stripe payment 
  get "/payments/success", to: "payments#success", as: "success_payment"
  post "/payments/webhook", to: "payments#webhook"

end
