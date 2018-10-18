Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :viewpoints
  resources :packaging_types
  resources :packagings
  resources :customers
  resources :faqs
  resources :roles
  resources :honors
  resources :earnings
  resources :certifications
  resources :participations
  resources :exhibitions
  resources :memberships
  resources :profiles
  resources :uploads
  resources :categories
  resources :products
  resources :products
  resources :companies
  devise_for :users
  root to: 'home#index'
  match "/products/product_pictures/:id" => "products#product_pictures", :via => :get
  match "/products/product_documents/:id" => "products#product_documents", :via => :get
  match "/products/product_packaging/:id" => "products#product_packaging", :via => :get
  match "/products/product_customers/:id" => "products#product_customers", :via => :get
  match "/products/product_faq/:id" => "products#product_faq", :via => :get


  match "/companies/company_colleagues/:id" => "companies#company_colleagues", :via => :get
  match "/companies/company_exhibitions/:id" => "companies#company_exhibitions", :via => :get
  match "/companies/company_certificates/:id" => "companies#company_certificates", :via => :get
  match "/companies/company_album/:id" => "companies#company_album", :via => :get
  match "/companies/company_catalogs/:id" => "companies#company_catalogs", :via => :get
  match "/companies/company_honors/:id" => "companies#company_honors", :via => :get

  match "/exhibitions/search/:id"  => "exhibitions#search", :via => :get
  match "/certifications/search/:id"  => "certifications#search", :via => :get

  match "/profiles/mobile_search/:id" => "profiles#mobile_search", :via => :get

  match "/likes/liike/:id" => "likes#liike", :via => :get
  match "/likes/disliike/:id" => "likes#disliike", :via => :get

  match "/uploads/remoted/:id" => "uploads#remoted", :via => :get
end
