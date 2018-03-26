Rails.application.routes.draw do
  resources :profiles
  devise_for :users

  # TODO: Add root route as needed/necessary
  # unauthenticated :user do
  #   root to: 'static_pages#landing'
  # end
end
