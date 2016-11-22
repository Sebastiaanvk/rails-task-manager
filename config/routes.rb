Rails.application.routes.draw do

root 'tasks#index'
resources :tasks
#read all tasks
#   get "tasks", to: "tasks#index"

# #read one task
#   get "tasks/:id", to: "tasks#show", as: :task

# #read

#   get "task/new", to: "tasks#new"

# #create new task

#   post "tasks", to: "tasks#create"

#   get    "tasks/:id/edit", to: "tasks#edit"

#   patch  "tasks/:id",      to: "tasks#update"

#   delete "tasks/:id",      to: "tasks#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
