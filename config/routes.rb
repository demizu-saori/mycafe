Rails.application.routes.draw do
  devise_for :users
  root 'cafedrink#index'
  get 'cafedrink'      => 'cafedrink#index'
  get 'cafedrink/new'  => 'cafedrink#new'
  post 'cafedrink'     => 'cafedrink#create'
  get 'users/:id'  => 'users#show'
  delete 'cafedrink/:id' => 'cafedrink#destroy'
  get 'cafedrink/:id/edit' => 'cafedrink#edit'
  patch 'cafedrink/:id' => 'cafedrink#update'
  get 'cafedrink/:id' => 'cafedrink#show'
end
