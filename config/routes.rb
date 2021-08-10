Rails.application.routes.draw do
  resources :channels do
    resource :channel_user # Singular, if we want to create/delete a user channel, we will operate on the current user without passin an extra ID for the user itself.
    resources :messages
  end

  devise_for :users

  root to: 'channels#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
