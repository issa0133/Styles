Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to = 'homes#top'
  get 'about' => 'homes#about'
  get 'search' => 'searches#search'

  resources :post_images, only: [:index, :new, :create, :show,] do
    collection do
      get :follower_post
    end
    resources :post_comments, only: [:create, :destroy]
    resource :post_favorites, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get :followers, on: :member
    get :followeds, on: :member
  end

  resources :genres, only: [:index, :show]

end

