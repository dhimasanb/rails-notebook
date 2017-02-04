Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
