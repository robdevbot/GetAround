get '/suggestions' do
  @suggestions = Suggestion.all
  erb :'/suggestions/index'
end



post '/suggestions' do
  newsuggestion = Suggestion.new(
    name: params[:name],
    description: params[:description],
    start_time: Time.new(params[:start_time]),
    end_time: Time.new(params[:end_time]),
  )

  if newsuggestion.save
    redirect "/suggestions/#{newsuggestion.id}"
  else
    @errors = newsuggestion.errors.full_messages
    erb :'/suggestions/new'
  end
end


delete '/suggestions/:id' do
  suggestion_to_delete = Suggestion.find(params[:id])
  suggestion_to_delete.destroy
  redirect '/suggestions'
end


get '/suggestions/new' do
  erb :'/suggestions/new'
end


get '/suggestions/:id' do
  @suggestion = Suggestion.find(params[:id])
  erb :'/suggestions/show'
end

/suggestions/#{newsuggestion.id}
