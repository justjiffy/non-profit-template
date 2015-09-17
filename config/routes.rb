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
  get 'posts/' => 'posts#index', as: :post_index
  get 'events/' => 'events#index', as: :event_index


  #Available to ALL REGISTERED USERS  
  get 'logout/' => 'sessions#destroy'

  #Available to ADMIN ONLY
  get 'admin/show' => 'admins#show', as: :admin_show
  get 'admin/' => 'admins#index', as: :admin

  get 'admin/events' => 'admins#events', as: :admin_event

  get 'admin/post/' => 'posts#new', as: :post
  get 'admin/new_post/' => 'posts#new_post'
  get 'admin/event/' => 'events#new', as: :event
  get 'admin/new_event/' => 'events#new_event'
  post 'post/' => 'posts#create', as: :new_post
  post 'event/' => 'events#create', as: :new_event

  get 'show/:id' => 'posts#show', as: :full
  get 'events/:id' => 'events#show', as: :detail

  get 'show/:id/edit' => 'posts#edit', as: :edit_post
  get 'events/:id/edit' => 'events#edit', as: :edit_event
  patch 'show/:id/edit' => 'posts#update'
  patch 'events/:id/edit' => 'events#update'

  delete 'show/:id' => 'posts#destroy'
  delete 'events/:id' => 'events#destroy'


end
