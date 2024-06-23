Rails.application.routes.draw do
  get '/health', to: 'health_controller#health'

  # User apis
  post '/api/v1/u/users/register', to: 'user/users#register'
  post '/api/v1/u/users/login', to: 'user/users#login'
  get '/api/v1/u/users/profile', to: 'user/users#profile'

  get '/api/v1/u/camping_packets', to: 'user/camping_packets#packet_list'
  get '/api/v1/u/camping_items', to: 'user/camping_packets#equipment_list'

  get '/api/v1/u/bookings', to: 'user/bookings#my_list'
  get '/api/v1/u/bookings/:booking_number', to: 'user/bookings#my_detail'
  post '/api/v1/u/bookings/create', to: 'user/bookings#create'
  post '/api/v1/u/bookings/:booking_number/pay', to: 'user/bookings#pay' # TODO

  # Admin apis
  get '/api/v1/a/users', to: 'admin/users#list' # TODO
  get '/api/v1/a/bookings', to: 'admin/bookings#admin_list'
  post '/api/v1/a/bookings/:booking_number/action/:status', to: 'admin/bookings#admin_action' # TODO
  get '/api/v1/a/bookings/:booking_number', to: 'admin/bookings#admin_detail'

  get '/api/v1/a/camping_packets', to: 'admin/camping_packets#list' # TODO
  get '/api/v1/a/camping_packets/:id', to: 'admin/camping_packets#detail' # TODO
  post '/api/v1/a/camping_packets', to: 'admin/camping_packets#create' # TODO
  patch '/api/v1/a/camping_packets/:id', to: 'admin/camping_packets#update' # TODO
  delete '/api/v1/a/camping_packets/:id', to: 'admin/camping_packets#delete' # TODO

  get '/api/v1/a/camping_items', to: 'admin/camping_items#list' # TODO
  get '/api/v1/a/camping_items/:id', to: 'admin/camping_items#detail' # TODO
  post '/api/v1/a/camping_items', to: 'admin/camping_items#create' # TODO
  patch '/api/v1/a/camping_items/:id', to: 'admin/camping_items#update' # TODO
  delete '/api/v1/a/camping_items/:id', to: 'admin/camping_items#delete' # TODO

  post '/api/v1/internal/seed/quick', to: 'seed#seed'
end
