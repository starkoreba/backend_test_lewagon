Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :listings, only: %i[index show create update destroy]
      resources :missions, only: :index
    end
  end
  namespace :admin do
    resources :listings
  end
end
