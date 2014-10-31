resources :dashboard, controller: "dashboard", only: [:index], path: 'dashboard'
resources :products

root :to => redirect { |p, req| req.flash.keep; "admin/dashboard" }