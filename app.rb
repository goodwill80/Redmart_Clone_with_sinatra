class Redmart_sinatraApp < Sinatra::Base

  get '/' do
      erb '<h2>Welcome to RedMart!</h2>'
    end

  get '/users' do
      @users = User.all
      erb :'users'
  end

  get '/about' do
      erb '<h3>about us</h3>'
  end

  get '/users/:id' do

  end

  post "/users" do
    # some code here
  end


  # PUT "/books/3" - Updates a specific book
  put "/users/:id" do
    # some code here
  end

  # PATCH "/books/3" - Partially updates a specific book
  patch "/users/:id" do
    # some code here
  end

  # DELETE "/books/3" - Deletes a specific book
  delete "/users/:id" do
    # some code here
  end

  get "/stylesheets/main.css" do
  content_type 'text/css'
end


end
