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




    get '/products' do
      @products = Product.all
      erb :'products/index'
    end

    get '/products/new' do
      @product= Product.new
      erb :'products/new'
    end

    get '/products/:id' do
      if params[:id] == 'new'
        erb :'products/new'
      else
        @product = Product.find(params[:id])
        erb :'products/show'
      end
    end


    post '/products' do
      puts params[:product]
      @products = Product.new(params[:product])
      if @products.save
        redirect("/products")
      else
        erb :"products/new"
    end
  end

    get '/products/:id/edit' do
      @product = Product.find(params[:id])
      erb :'products/edit'
  end

    put '/products/:id' do
    @product = Product.find(params[:id])

    if @product.update_attributes( params[:product] )
      redirect("/products")
    end
  end

  delete '/products/:id' do
    @product = Product.find(params[:id])

    if @product.destroy
      redirect("/products")
    else
      erb :"products/#{@product.id }"
    end

  end





  end
