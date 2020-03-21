Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
