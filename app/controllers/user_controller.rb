# get '/users' do # display a list of all users
#   erb :'/users/index'
# end

get '/users/new' do #return an HTML form for creating a new user
  erb :'/users/new'
end

post  '/users' do #create a new user
  user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password]
      )

  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end

end

get '/users/:id/edit' do # return an HTML form for editing a user
  @user = User.find(params[:id])
  erb :'/users/edit'
end

put '/users/:id' do #update a specific user
  user = User.find(params[:id])

  if user
    user.update_attributes(
      username: params[:username],
      email: params[:email],
      password: params[:password]
      )
  else nil end

  redirect '/'

end

delete  '/users/:id' do #delete a specific user
  user = User.find(params[:id])
  if user
    user.destroy
  else nil end
  redirect '/'
end


get '/users/login' do # return an HTML form for logging in
  erb :'/users/login'
end

post '/users/login' do #create a session for a user
  user = User.authenticate(params[:email], params[:password])

  if user
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end

post '/users/logout' do #clear sessions
  session.clear
  redirect '/'
end


get '/users/:id' do #display a specific user
  @user = User.find(params[:id])
  erb :'/users/show'
end

