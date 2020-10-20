Rails.application.routes.draw do
  resources :songs, except: :destroy
  resources :genres, except: (:index, :destroy)
  resources :artists, except: (:index, :destroy)
end
