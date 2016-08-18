post '/subscriptions' do

  user = User.find(session[:user_id])

  newsub = Subscription.new(user_id: user.id, line_id: params[:line_id], priority: 2 )

  newsub.save

  redirect "/users/#{user.id}"
end
