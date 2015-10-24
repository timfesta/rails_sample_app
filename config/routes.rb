Rails.application.routes.draw do

  get 'users/new'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'home' => 'static_pages#home'

  get 'signup' => 'users#new'
  
  resources :users

  root 'static_pages#home'
end
