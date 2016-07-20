class RedmartSinatraApp < Sinatra::Base
  get '/' do
    erb 'Hello world'
  end

  # GET /books LIST ALL THE BOOKS
  get '/users' do
    # @books BY RIGHT SHOULD TAKE FROM DATABASE

    # @books = ['Harry Potter', 'Hunger Games', 'Lord of the Rings']

    @users = User.all

    erb :'users'
  end

  # POST /books CREATE NEW BOOKS

  # PUT /books/1 UPDATE BOOK WITH ID 1

  # PATCH /books/3 PARTIALLY UPDATE BOOK WITH ID 3

  # DELETE /books/1 DELETE BOOK WITH ID 1

end
