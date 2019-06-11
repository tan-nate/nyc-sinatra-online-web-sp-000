class LandmarksController < ApplicationController
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/figures' do
    landmark = Landmark.create(params[:landmark])
    flash[:message] = "Successfully created landmark."
    redirect "landmarks/#{landmark.id}"
  end
end
