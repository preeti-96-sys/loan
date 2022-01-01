Rails.application.routes.draw do
  resources :applies
  resources :mortgage_infos
  resources :car_infos
  resources :education_infos
  resources :home_infos
  resources :personal_infos
  resources :education_details
  resources :home_details
  resources :personal_details
  resources :p_eligs
  resources :credentials
  resources :details
  resources :loancs
  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get 'home/index'
root 'home#index'

resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'


get 'pg/homepg'


get 'pg/type'

get 'pg/eligibility'
get 'personal_infos/new'
get 'home_infos/new'
get 'education_infos/new'
get 'car_infos/new'

get 'pg/repay'
get 'pg/apply'
get 'pg/plans'

get 'pg/personal'
get 'pg/homeloan'
get 'pg/car'
get 'pg/mortgage'
get 'pg/mortgage'
get 'pg/education'
get 'pg/about'

get 'pg/p_elig'
end
