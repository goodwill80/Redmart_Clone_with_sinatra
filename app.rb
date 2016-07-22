class Redmart_sinatraApp < Sinatra::Base

  get "/" do
      erb '<h2>Welcome to RedMart!</h2>'
    end


  # Gets all users we have
  get "/users" do
      @users = User.all
      erb :'users/index'
    end

  # GET FORM VIEW TO CREATE NEW USER
  get "/users/new" do
      erb :'users/new'
    end

  # SHOW - show details about just one user with id #{params[:id]}
  # GET "/user/n" - Just get one specific user (that already exists)
  get "/users/:id" do
    @users = User.find( params[:id] )
    erb :'users/show'
  end

  # GET FORM VIEW TO EDIT AN EXISTING user
  get "/users/:id/edit" do
      @users = User.find(params[:id])
      erb :'users/edit'
  end

  # CREATE - where the new form POSTs to, it does the actual creating
  # POST "/users" - Create a new user, add it to our list
  post "/users" do

    puts params[:user]
    puts params[:name]
    puts params[:address]

    User.create(
    name: "Jonathan",
    email: "j.hokit80@gmail.com",
    address: "yishun",
    password: 123434,
    cc_number: 123456789101
    )

    erb :'users/:id'
  end


  # UPDATE - like CREATE, this does the actual updating
  # PUT "/users/n" - Updates a specific user
    put "/users/:id" do
      @update_users = User.find(params[:id])
      @update_users.update_attributes(
      name: "jon kit",
      email: "kit@hotmail",
      password: 12343,
      cc_number: 123456789101
      )

      erb "update one user with id #{params[:id]}"
    end

    # DESTROY - totally nukes a user from the database
    # DELETE "/users/n" - Deletes a specific user
    delete "/users/:id" do
      @deleted_users = Pizza.find(1)
      @deleted_users.destroy

      erb "delete one user with id #{params[:id]}"
    end

end
