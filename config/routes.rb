Rails.application.routes.draw do
  get 'chats/room'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get     "about"    => 'static_pages#about'
  get     "signup"   => 'users#new'
  get     'login'    => 'sessions#new'
  post    'login'    => 'sessions#create'
  delete  'logout'   => 'sessions#destroy'
  get     'chatroom' => 'chats#room'
  root                  'static_pages#home'
  resources :users
  
end
