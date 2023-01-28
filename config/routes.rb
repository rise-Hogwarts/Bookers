Rails.application.routes.draw do
  root to: 'books#top'
  post 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  resources :books


end
