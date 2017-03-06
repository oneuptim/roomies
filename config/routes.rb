Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users,
  :path => '',
  :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'users/edit'},
  :controllers => {:omniauth_callbacks => 'omniauth_callbacks',
  				   :registrations => 'registrations'
					}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :put]
  resources :rooms
  resources :photos
  resources :room do
    resources :reservations, only: [:create]
  end

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end

  put '/users/update_profile_pic' => 'users#update'
  get '/all' => 'pages#index'
  get '/preload' => 'reservations#preload'
  get '/preview' => 'reservations#preview'
  get '/search' => 'pages#search'
  get '/trips' => 'reservations#trips'
  get '/reservations' => 'reservations#reservations'

  post '/notify' => 'reservations#notify'
  post '/trips' => 'reservations#trips'
  # get '/images/:id' => 'users#images'

end
