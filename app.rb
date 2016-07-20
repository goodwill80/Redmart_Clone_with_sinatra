class Redmart_sinatraApp < Sinatra::Base

  get '/' do
      erb '<h2>Welcome to RedMart!</h2>'
    end

  get '/users' do
      @users = User.all
      erb :'users'
  end

  get '/users/:id' do
      erb :'each_user'
  end


end
