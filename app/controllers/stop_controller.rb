get '/stops' do
  @stops = Stop.all
  erb :'/stops/index'
end

















get '/stops/:id' do
  @stop = Stop.find(params[:id])
  erb :'/stops/show'
end
