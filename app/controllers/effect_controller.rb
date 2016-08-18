post '/effects' do
  neweffect = Effect.new(
    stop_id: params[:stop_id].to_i,
    event_id: params[:event_id].to_i,
    severity: params[:severity].to_i
  )

  if neweffect.save
    if request.xhr?
      puts "Ajax!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      puts "sending back: <li>#{neweffect.stop.name}, severity #{neweffect.severity}</li>"
      "<li>#{neweffect.stop.name}, severity #{neweffect.severity}</li>"
    else
      redirect "/events/#{neweffect.id}"
    end
  else
    if request.xhr?
      status 422
    else
      @errors = neweffect.errors.full_messages
      erb :'/effects/new'
    end
  end
end


get '/effects/new' do
  if request.xhr?
    erb :'/effects/_newform', layout: false, locals: {event_id: params[:event_id]}
  else
    erb :'/effects/_newform'
  end
end
