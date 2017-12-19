Rails.application.routes.draw do
  resources :tasks
  post "/tasks/:id" => "tasks#soft_delete"
  root to: "tasks#index"

=begin
  get "/tasks" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  get "/tasks/:id" => "tasks#show"
  get "/tasks/edit/:id" => "tasks#edit"
  post "/tasks" => "tasks#create"
  delete "/tasks/:id" => "tasks#destroy"
  put "/tasks/:id" => "tasks#update"
=end
end
