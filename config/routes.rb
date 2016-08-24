Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :activities, only: [:index, :show]
  resources :dayplanners
  resources :memberships

  # resources :polterabends do
  #   resources :activities
  #   resources :memberships
  #   resources :dayplanners
  # end

end
