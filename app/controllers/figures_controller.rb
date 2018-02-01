class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figures.all
    erb :'/figures/index'
  end
  
  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/:id' do
    @figures = Figures.find(:id)
    erb :'/figures/show'
  end
end
