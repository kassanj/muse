Rails.application.routes.draw do
  resources :jobs

  devise_for :users
  resources :posts do 
    member do
     get "like", to: "posts#upvote"
     get "dislike", to: "posts#downvote"
    end
    resources :comments
  end 

    get 'jobs_path', to: "jobs#index"
  root 'posts#index'
end
