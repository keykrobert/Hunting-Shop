Rails.application.routes.draw do
  get 'weapons/new'
  get 'weapons/edit'
  get 'weapons/show'
  devise_for :users

  root 'main_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
