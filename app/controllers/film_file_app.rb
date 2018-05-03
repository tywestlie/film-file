class FilmFile < Sinatra::Base

  get '/films' do
    @films = Film.all
    erb :"films/index"
  end

  get '/films/new' do
    erb :"films/new"
  end

  post '/films' do
    Film.create(params[:film])
    redirect '/films'
  end

  get '/film/:id' do
    # require 'pry'; binding.pry
    @film = Film.find(params['id'])
    erb :"films/show"
  end

  get '/' do
    erb :index
  end

end
