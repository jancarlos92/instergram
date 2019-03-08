Rails.application.routes.draw do
  root 'static_pages#home'


  get 'static_pages/home' => 'static_pages#home'

  get 'static_pages/login' => 'static_pages#login'

  post 'static_pages/login' => 'static_pages#login'


 

  resources :users , :posts


  resources :login, only: [:new, :create, :update, :destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
