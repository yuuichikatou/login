Rails.application.routes.draw do
  get '/blogs', to: 'blogs#index' #追記する
  get '/stocks', to: 'stocks#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end  
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
