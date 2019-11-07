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
        get "score" => "second_rounds#score"
        post "catch_point" => "second_rounds#catch_point"
        post "record" => "second_rounds#record"
        get "lost" => "second_rounds#lost"
        post "lost_record" => "second_rounds#lost_record"
      end
    end
    resources :third_rounds, only: [:new, :create] do
      collection do
        get "score" => "third_rounds#score"
        post "catch_point" => "third_rounds#catch_point"
        post "record" => "third_rounds#record"
        get "lost" => "third_rounds#lost"
        post "lost_record" => "third_rounds#lost_record"
      end
    end
    resources :fourth_rounds, only: [:new, :create] do
      collection do
        get "score" => "fourth_rounds#score"
        post "catch_point" => "fourth_rounds#catch_point"
        post "record" => "fourth_rounds#record"
        get "lost" => "fourth_rounds#lost"
        post "lost_record" => "fourth_rounds#lost_record"
      end
    end
    resources :semi_final_rounds, only: [:new, :create] do
      collection do
        get "score" => "semi_final_rounds#score"
        post "catch_point" => "semi_final_rounds#catch_point"
        post "record" => "semi_final_rounds#record"
        get "lost" => "semi_final_rounds#lost"
        post "lost_record" => "semi_final_rounds#lost_record"
      end
    end
    resources :final_rounds, only: [:new, :create] do
      collection do
        get "score" => "final_rounds#score"
        post "catch_point" => "final_rounds#catch_point"
        post "record" => "final_rounds#record"
        get "lost" => "final_rounds#lost"
        post "lost_record" => "final_rounds#lost_record"
      end
    end
    resources :total_records, only: [:new, :create]
  end
end
