Rails.application.routes.draw do

  resources :bloggers, only: [:index, :new, :create, :show]
  resources :posts, except: :destroy
  resources :destinations, except: :destroy

  get '/posts/:id/like', to: 'posts#like', as: 'like_post'

end