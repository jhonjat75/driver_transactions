class TripsController < ApplicationController

  get '/trips' do
    redirect_if_not_logged_in
    erb :"trips/index"
  end

  get '/trips/new' do
    redirect_if_not_logged_in
    erb :"trips/new"
  end

  get '/trips/:id' do
    redirect_if_not_logged_in
    @trip = Trip.find(:id)
    erb :"trips/show"
  end

  post '/trips' do
    redirect_if_not_logged_in
    @trip = Trip.create( :rider => User.current_user(session), :driver => params[:trip][:driver])
    redirect to "/trips/#{@trip.id}"
  end



end
