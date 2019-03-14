Rails.application.routes.draw do

  root to: 'sessions#new'

  resources :users, except: [:edit, :update, :destroy]
  resource :session, only: [:new, :create, :destroy]
  resources :subs do 
    resources :posts, except: [:index] do
      resources :comments, only: [:new, :create]
    end
  end
  
end
