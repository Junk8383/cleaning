Rails.application.routes.draw do
  devise_for :users,controllers: {
    sessions: 'users/sessions'
  }

  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :user, only: [:index, :new, :destroy]
  resources :order, only: [:index, :new, :create] do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
    end
  end
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
