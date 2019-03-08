Rails.application.routes.draw do



  resources :static_pages, controller: 'login'


  resources :users , :posts


  resources :login, only: [:new, :create, :update, :destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
