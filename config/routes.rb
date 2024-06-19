Rails.application.routes.draw do
  # User apis
  post '/api/v1/u/users/register', to: 'user/users#register'
  post '/api/v1/u/users/login', to: 'user/users#login'
  get '/api/v1/u/users/profile', to: 'user/users#profile'

  get '/api/v1/u/camping_packages', to: 'user/camping_packages#list'
  get '/api/v1/u/camping_items', to: 'user/camping_items#list'

  get '/api/v1/u/bookings', to: 'user/bookings#list'
  get '/api/v1/u/bookings/:booking_number', to: 'user/bookings#detail'
  post '/api/v1/u/bookings/create', to: 'user/bookings#create'
  post '/api/v1/u/bookings/:booking_number/pay', to: 'user/bookings#pay'

  # Admin apis
  get '/api/v1/a/bookings', to: 'admin/bookings#list'
end
