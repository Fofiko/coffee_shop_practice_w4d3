require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/coffee_order')
also_reload('./models/*')

# GET	/coffee-orders	index
# GET	/coffee-orders/:id	show
# GET	/coffee-orders/new	new
# POST	/coffee-orders	create
# GET	/coffee-orders/:id/edit	edit
# POST	/coffee-orders/:id	update
# POST	/coffee-orders/:id/delete	destroy


 # index
get '/coffee-orders' do
  @orders = CoffeeOrder.all()
  erb(:index)
end

# show
get '/coffee-orders/:id' do
  @order = CoffeeOrder.find(params[:id])
  erb(:show)
end

# new
get '/coffee-orders/new' do
  erb(:new)
end

# create
post '/coffee-orders' do
  @order = CoffeeOrder.new(params)
  @order.save()
  erb(:create)
end

# edit
get '/coffee-orders/:id/edit' do
  @order = CoffeeOrder.find(params[:id])
  erb(:edit)
end

# update
post '/coffee-orders/:id' do
  CoffeeOrder.new(params).update
  redirect to '/coffee-orders'
end

# destroy
post '/coffee-orders/:id/delete' do
  order = CoffeeOrder.find(params[:id])
  order.delete()
  redirect to '/coffee-orders'
end
