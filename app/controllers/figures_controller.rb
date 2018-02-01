class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end
  
  get '/figures/new' do
     @figures = Figure.all
    erb :'/figures/new'
  end

  post '/figures' do
    binding.pry
    @figure = Figure.create(name: params[:figure]["name"], title: params[:figure]["title"]["name"])
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end
end
