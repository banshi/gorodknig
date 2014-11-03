resources :dashboard, controller: "dashboard", only: [:index], path: 'dashboard'
resources :products

match "/", to: redirect('admin/dashboard'), via: [:get]
