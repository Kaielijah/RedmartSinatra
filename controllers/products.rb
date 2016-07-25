class RedmartSinatraApp < Sinatra::Base


#show all products
get '/products' do
  @product = Product.all
  erb :'products/index'
end

get '/products/:id' do
if params[:id] == 'new'
  erb :'products/new'
else
  @product = Product.find(params[:id])
  erb :'products/show'

end
end


post '/products/new' do
puts params[:product]
@new_product = Product.new(params[:product])

if @new_product.save
  # go to all products list
  redirect("/products")
else
  # throw an error
  erb :"products/new"
end
end
# put '/products'

get '/products/:id/edit' do
  @product = Product.find(params[:id])
  erb :'products/edit'
end

put '/products/:id' do
@updated_product = Product.find(params[:id])

if @updated_product.update_attributes(params[:product])
  redirect("/products")
end
end

delete '/products/:id' do
@deleted_product = Product.find(params[:id])

if @deleted_product.destroy
  # go to all products list
  redirect("/products")
else
  # throw an error
  erb :"products/#{ @deleted_product.id }"
end

end

end
