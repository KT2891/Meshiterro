Rails.application.routes.draw do
  root to: "homes#top"

  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]


  get "homes/about" => "homes/about", as: "about"
end
