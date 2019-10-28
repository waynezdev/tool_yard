Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get "/", to: "pages#home", as: "root"
  get "/products", to: "products#index", as: "products"
  get "/products/new", to:"products#new", as: "new_product" #shows form for creating new product
  post "/products", to: "products#create" #create the new product
  
  
  get "/products/:id", to: "products#show", as: "product" #show single product
  get "/products/:id/edit", to:"products#edit", as: "edit_product" #shows form to edit a product

  put "/products/:id", to:"products#update" # making the update to the product
  patch "/products/:id", to:"products#update"
  
  
  #for stripe payment 
  get "/payments/success", to: "payments#success", as: "success_payment"
  post "/payments/webhook", to: "payments#webhook"

end
