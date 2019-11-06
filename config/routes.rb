Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :players, only: [:new, :create] do
    resources :first_rounds, only: [:new, :create] do
      collection do
        get "score" => "first_rounds#score"
        post "catch_point" => "first_rounds#catch_point"
        post "record" => "first_rounds#record"
      end
    end
    resources :second_rounds, only: [:new, :create] do
      collection do
        post "lose" => "second_rounds#lose"
      end
    end
    resources :third_rounds, only: [:new, :create] do
      collection do
        post "lose" => "third_rounds#lose"
      end
    end
    resources :fourth_rounds, only: [:new, :create] do
      collection do
        post "lose" => "fourth_rounds#lose"
      end
    end
    resources :semi_final_rounds, only: [:new, :create] do
      collection do
        post "lose" => "semi_final_rounds#lose"
      end
    end
    resources :final_rounds, only: [:new, :create]
  end
 
end
