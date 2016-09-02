Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :activities, only: [:index, :show, :new, :create]
  get '/filtered_activities', to: 'activities#filtered_activities'
  get '/integration-index', to: 'activities#integration_index'
  get '/show_copy/:id', to: 'activities#show_copy'

  resources :profile, only: [:show]

  resources :polterabends do
    resources :activity_polterabends
    resources :memberships
    resources :dayplanners
    resources :activity_dayplanners
    resources :comments, only: :create
  end




  post '/save_activities', to: 'activity_polterabends#save_activities'
  post '/save_activity', to: 'activity_polterabends#save_activity'
  post '/save_pa_acts', to: 'dayplanners#save_pa_acts'
  post '/save_dayplanners', to: 'activity_dayplanners#save_dayplanners'

end
