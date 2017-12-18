Rails.application.routes.draw do
  get "/tasks" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  get "/tasks/:id" => "tasks#show"
  post "/tasks" => "tasks#create"
  delete "/tasks/:id" => "tasks#destroy"
end
