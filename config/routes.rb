Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :jobs, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :jobs, only: [:index, :show]
  resources :jobs do
    resources :applications
  end
  root 'dashboard#index'

end
