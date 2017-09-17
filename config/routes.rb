Rails.application.routes.draw do
  devise_for :users
  resources :comments
  root to: redirect('/ideas')
  get "pages/info"
  resources :ideas
  resource :user, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
