Rails
  .application
  .routes
  .draw do
    root 'movies#index'

    get 'movies/filter/:filter' => 'movies#index', :as => 'filtered_movies'

    resources :movies do
      resources :reviews
      resources :favorites, only: %i[create destroy]
    end

    resources :genres

    resources :users
    get 'signup' => 'users#new'

    resource :session, only: %i[new create destroy]
    get 'signin' => 'sessions#new'
  end
