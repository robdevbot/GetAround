get '/events' do
  @events = Event.all
  erb :'/events/index'
end



get '/events/new' do
  erb :'/events/new'
end


post '/events' do
  newevent = Event.new(
    name: params[:name],
    description: params[:description],
    start_time: Time.new(params[:start_time]),
    end_time: Time.new(params[:end_time]),
    over: false
  )

  if newevent.save
    if params[:suggestion_id]
      sug_to_delete = Suggestion.find(params[:suggestion_id])
      sug_to_delete.destroy
    end
    redirect "/events/#{newevent.id}"
  else
    @errors = newevent.errors.full_messages
    erb :'/events/new'
  end
end



get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'/events/show'
end
