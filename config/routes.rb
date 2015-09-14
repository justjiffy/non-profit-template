Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  get '/about' => 'welcome#about'
  get '/contact' => 'welcome#contact'

  get '/login' => 'welcome#login'
  get '/register' => 'welcome#register'

end
