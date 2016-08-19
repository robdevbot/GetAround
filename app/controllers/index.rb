get '/' do
  if session[:user_id]
    redirect "/users/#{session[:user_id]}/dashboard"
  else
    redirect '/stops'
  end
end
