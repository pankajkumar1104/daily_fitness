Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/exercise", to: "trainings#exercises"
  get "/schedule", to: "trainings#schedules"
  get "/category", to: "trainings#categories"
  root "trainings#categories"
end
