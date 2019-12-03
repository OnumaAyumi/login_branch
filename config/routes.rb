Rails.application.routes.draw do
  root to: 'users#index'

  resources :users do
    collection do 
      get "signup_new"
      get "phone"
      get "step3"
    end
  end

end
