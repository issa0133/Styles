Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to = 'homes#top'
  get 'about' => 'homes#about'
  get 'search' => 'searches#search'

  resources :post_images, only: [:index, :new, :create, :show, :destroy] do
    collection do
      get :follower_post
    end
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
      member do
        get :followers
        get :followeds
      end
  end

  resources :genres, only: [:index, :show]

end

