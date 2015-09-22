Rails.application.routes.draw do
  resources :events do
    # /events/:event_id/user_event_predictions/#action
    resources :user_event_predictions, only: [:create, :new]
  end
  resources :users
  root 'events#index'
end
