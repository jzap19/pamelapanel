Rails.application.routes.draw do
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  get '/dashboard', to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :students
  resources :instructors
  resources :cohorts
  resources :courses
  resources :instructors_cohorts
  resources :students_cohorts
end
