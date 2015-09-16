Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Available to EVERYONE
  root 'welcome#index'
  get 'about/' => 'welcome#about'
  get 'contact/' => 'welcome#contact'
  get 'login/' => 'sessions#new'
  post 'login/' => 'sessions#create'
  get 'register/' => 'users#new'
  post 'register/' => 'users#create', as: :new_user
  get 'events/' => 'events#index'


  #Available to ALL REGISTERED USERS  
  get 'logout/' => 'sessions#destroy'

  #Available to ADMIN ONLY
  get 'admin/show' => 'admins#show'
  get 'admin/' => 'admins#index', as: :admin

  get 'admin/events' => 'admins#events'

  get 'admin/post/' => 'posts#new', as: :post
  get 'admin/new_post/' => 'posts#new'
  get 'admin/event/' => 'events#new', as: :event
  post 'post/' => 'posts#create', as: :new_post
  post 'event/' => 'events#create', as: :new_event

  get 'show/:id' => 'posts#show', as: :full
  get 'event/:id' => 'events#show', as: :details

  get 'show/:id/edit' => 'posts#edit', as: :edit_post
  get 'event/:id/edit' => 'events#edit', as: :edit_event
  patch 'show/:id/edit' => 'posts#update'
  patch 'event/:id/edit' => 'events#update'

  delete 'show/:id' => 'posts#destroy'
  delete 'event/:id' => 'events#destroy'


end
