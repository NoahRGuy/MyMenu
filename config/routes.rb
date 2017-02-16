Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :menus, only: [:new, :create, :show, :index]
  resources :menu_items, only: [:new, :create]
end
