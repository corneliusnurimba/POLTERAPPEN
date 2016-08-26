Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :activities, only: [:index, :show]
  resources :profile, only: [:show]

  resources :polterabends do
    resources :activity_polterabends
    resources :memberships
    resources :dayplanners
    resources :activity_dayplanners
    resources :comments, only: :create


  end

  post '/save_activities', to: 'activity_polterabends#save_activities'

end
