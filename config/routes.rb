Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root to: "books#index"

  resources :books
  resources :borrow_logs

  post "/check_params", to: "borrow_logs#check_params"
  post "/return_book", to: "borrow_logs#return_book"
end
