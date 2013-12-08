class App
  get '/' do
    @firstname=nil
    haml :index
  end
  post '/' do
    @firstname=params[:firstname]
    haml :index
  end
end
