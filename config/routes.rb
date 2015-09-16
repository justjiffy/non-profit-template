Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  get 'about/' => 'welcome#about'
  get 'contact/' => 'welcome#contact'

  get 'login/' => 'sessions#new'
  post 'login/' => 'sessions#create'

  get 'logout/' => 'sessions#destroy'

  get 'register/' => 'users#new'
  post 'register/' => 'users#create', as: :new_user

  get 'events/' => 'events#index'

  get 'admin/show' => 'admins#show'
  get 'admin/' => 'admins#index', as: :admin

  get 'admin/post/' => 'posts#new', as: :post

  post 'post/' => 'posts#create', as: :new_post

  get 'show/:id' => 'posts#show', as: :full

  get 'show/:id/edit' => 'posts#edit', as: :edit_post
  patch 'show/:id/edit' => 'posts#update'


end
