Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :contacts, only: %i(index new create destroy)
  resources :chats, only: %i(index show) do
    resources :messages, only: :create, defaults: { format: :js }
  end
  resources :messages, only: :create, defaults: { format: :js }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "chats#index"
end
