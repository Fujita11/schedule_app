Rails.application.routes.draw do
  resources :meetings
  resources :posts
  
  resources :schedules
end
