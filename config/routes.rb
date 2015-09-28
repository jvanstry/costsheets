Rails.application.routes.draw do
  resources :truckers
  resources :jobs
  resource :users
  resource :material_suppliers
  resource :sub_contractors

  get '/', to: 'static_pages#home'
end
