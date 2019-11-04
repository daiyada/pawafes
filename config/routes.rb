Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :players, only: [:new, :create] do
    resources :first_rounds, only: [:new, :create] do
      collection do
        get "score" => "first_rounds#score"
        post "record" => "first_rounds#record"
      end
    end
    resources :second_rounds, only: [:new, :create]
    resources :third_rounds, only: [:new, :create]
    resources :fourth_rounds, only: [:new, :create]
    resources :semi_final_rounds, only: [:new, :create]
    resources :final_rounds, only: [:new, :create]
  end
 
end
