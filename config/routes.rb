Rails.application.routes.draw do
  devise_for :users
  resources :topic_quizzes do 
    member do 
      get :preview_quiz
      post :create_quiz_submission
    end
  end
  get 'home/index'
  root 'home#index'
  root to: "home#index"

  namespace :admin do 
    resources :subjects
    resources :topics 
    resources :topic_quizzes
  end
end
