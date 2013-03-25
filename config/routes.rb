Inheritance::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  mount Rich::Engine => '/rich', :as => 'rich'
  root :to => 'home#index'
  devise_for :users
  get "home/index"
  
  resources :blogs
  resources :contacts
  resources :home do
    member do
      get :video
    end
  end
end
