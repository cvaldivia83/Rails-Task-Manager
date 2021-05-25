Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  # List all the tasks we have in our db
  get 'tasks', to: 'tasks#index', as: :tasks

  # Creates a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # Edits the tasks that exist in the db
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Shows the details of a single task
  get 'tasks/:id', to: 'tasks#show', as: :task
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
