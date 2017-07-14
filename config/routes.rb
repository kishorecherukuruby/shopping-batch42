Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  namespace :hospital do
    get 'patients/new'
  end

  namespace :hospital do
    get 'patients/create'
  end

  namespace :hospital do
    get 'patients/index'
  end

  namespace :hospital do
    get 'patients/show'
  end

  namespace :hospital do
    get 'patients/edit'
  end

  namespace :hospital do
    get 'patients/update'
  end

  namespace :hospital do
    get 'patients/delete'
  end

  namespace :hospital do
    resources :physicians
  end

  resources :brands
  resources :products do
    member do
      get "promo_code" , as: "promo_code"
    end
  end
  resources :categories do
  	member do
  		get 'category_product', as: "products"

  	end
  	collection do 
  		get 'ajax_product' , as: "ajax"
  	end
  end
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
