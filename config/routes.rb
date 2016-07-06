Rails.application.routes.draw do
  get 'todos' => 'todos#index'
  delete 'todos/:id' => 'todos#destroy'
  post 'todos' => 'todos#create'
  patch 'todos/:id' => 'todos#update'
  put 'todos/:id' => 'todos#update'
end
