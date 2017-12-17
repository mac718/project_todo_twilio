Rails.application.routes.draw do
  get '/index' => "tasks#index"
end
