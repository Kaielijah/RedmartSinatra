class RedmartSinatraApp < Sinatra::Base
  get '/' do
    erb 'System online
  end


  get '/users' do

    @users = User.all

    erb :'users'
  end



end
