Rails.application.routes.draw do
  devise_for :users

  # jobs
  resources :jobs

  # admin
  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
    end
  end

  root 'jobs#index'
end
