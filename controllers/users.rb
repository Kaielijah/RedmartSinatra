class RedmartSinatraApp < Sinatra::Base


#show all users
get '/users' do
  @user = User.all
  erb :'users/index'
end

get '/users/:id' do
if params[:id] == 'new'
  erb :'users/new'
else
  @user = User.find(params[:id])
  erb :'users/show'

end
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

post '/users/new' do
puts params[:user]
@new_user = User.new(params[:user])

if @new_user.save
  # go to all users list
  redirect("/users")
else
  # throw an error
  erb :"users/new"
end
end
# put '/users'

put '/users/:id' do
@updated_user = User.find(params[:id])

if @updated_user.update_attributes( params[:user] )
  redirect("/users")
end
end

delete '/users/:id' do
@deleted_user = User.find(params[:id])

if @deleted_user.destroy
  # go to all users list
  redirect("/users")
else
  # throw an error
  erb :"users/#{ @deleted_user.id }"
end

end

end
