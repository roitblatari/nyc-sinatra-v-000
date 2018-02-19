class FiguresController < ApplicationController

  get '/figures' do
    #  binding.pry
    @figures = Figure.all
    erb :'/figures/index'
  end
  
  get '/figures/new' do
     @figures = Figure.all
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params["figure"])
    @figure.titles << Title.find_or_create_by(name: params[:title]["name"])     
    @figure.landmarks << Landmark.find_or_create_by(name: params[:landmark]["name"])    
#  binding.pry 
        redirect "/figures/#{@figure.id}"
  end

  get '/figures/:id' do 
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do 
    @figure = Figure.find(params[:id])
    erb :'/figures/edit'
  end
end
