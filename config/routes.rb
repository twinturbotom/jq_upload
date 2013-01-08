Gallery::Application.routes.draw do
  resources :cust_uploads

  resources :paintings
  root to: 'cust_uploads#index'
end
