Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 1. /users - index - display a list of all users - GET
  # 2. /users/:id - show - display a specific user - GET
  # 3. /users/new - new - return an HTML form for creating a new user - GET
  # 4. /users - create - create a new user - POST
  # 5. /users/:id/edit - edit - return an HTML form for editing a user - GET
  # 6. /users/:id - update - update a specific user - PATCH/PUT
  # 7. /users/:id - destroy - delete a specific user - DELETE
  resources :users
end
