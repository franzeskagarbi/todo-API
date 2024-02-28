Rails.application.routes.draw do

  
  #Διαδρομές για εγγραφή, σύνδεση και αποσύνδεση του χρήστη
  root to: 'user#signup'
  get '/signup', to: 'user#signup'
  post '/signup', to: 'user#create'
  get '/login', to: 'user#login'
  post '/login', to: 'user#find'
  get '/logout', to: 'user#logout', as: :logout
  get '/users/:user_id/todo_lists', to: 'todo_lists#index', as: :user_todo_lists

  resources :todo_lists do
    resources :todo_items
  end  
end
