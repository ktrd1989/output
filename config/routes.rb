Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  
  resources :reports do
  end
  
  root "reports#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
