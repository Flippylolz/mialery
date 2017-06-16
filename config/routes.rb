Rails.application.routes.draw do
  root 'home#show'

  devise_for :users
  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
  end
  resources :albums do
    resources :photos
  end

  get '*unmatched_route', to: 'application#render_404'
end