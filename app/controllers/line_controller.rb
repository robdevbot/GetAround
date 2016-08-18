get '/lines' do
  @lines = Line.all
  erb :'/lines/index'
end

















get '/lines/:id' do
  @line = Line.find(params[:id])
  erb :'/lines/show'
end
