Rails.application.routes.draw do
  get 'sessions/new'

  get '/blogs', to: 'blogs#index' #追記する
  get '/stocks', to: 'stocks#index'
   get '/webpages', to: 'webpages#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end  
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
