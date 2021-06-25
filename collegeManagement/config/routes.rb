Rails.application.routes.draw do
  resources :course
  resources :student
  resources :department
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
