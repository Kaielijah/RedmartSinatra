class RedmartSinatraApp < Sinatra::Base
  get '/' do
    erb 'System online'
  end


end
