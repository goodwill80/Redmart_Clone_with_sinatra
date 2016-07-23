class Redmart_sinatraApp < Sinatra::Base

  get '/' do
    erb "<h2>Welcome to redmart</h2>"
  end

  get '/users' do
    @users = User.all
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

    post '/users' do
      puts params[:user]
      # this is how we do it in pizza shop
      # Pizza.new(parameters to pass in)
      # Pizza.save

      @new_user = User.new(params[:user])

      if @new_user.save
        # go to all users list
        redirect("/users")
      else
        # throw an error
        erb :"users/new"
      end
    end


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
