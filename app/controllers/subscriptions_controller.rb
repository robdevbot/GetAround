post '/subscriptions' do

  user = User.find(session[:user_id])

  newsub = Subscription.new(user_id: user.id, stop_id: params[:stop_id], priority: 2 )

  newsub.save

  redirect "/users/#{user.id}/dashboard"
end


# put '/subscriptions/:id' do
#   editsub = Subscription.find(params[:id])
#   editsub.update_attributes()
#   redirect "/users/#{user.id}"
# end


delete '/subscriptions/:id' do
  user = User.find(session[:user_id])
  destroysub = Subscription.find(params[:id])
  destroysub.destroy
  redirect "/users/#{user.id}"
end
