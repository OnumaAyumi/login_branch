Rails.application.routes.draw do
  root to: 'users#index'

  resources :users ,except: :destroy do
    collection do 
      get "signup_new"
      get "phone"
      get "phone_authentication"
      get "delivery_address"
      get "credit_card"
      get "create_finish"
    end
  end

end
