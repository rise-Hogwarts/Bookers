Rails.application.routes.draw do
  get '/' => 'homes#top'
  resources :books
  post 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
end
