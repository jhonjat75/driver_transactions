class TripsController < ApplicationController

  get '/trips' do
    redirect_if_not_logged_in
    erb :"trips/index"
  end

  get '/trips/new' do
    redirect_if_not_logged_in
    @user=User.find(params["user_id"])
    @drivers=User.where(role:"driver")
    erb :"trips/new"
  end

  post '/trips/create' do
    redirect_if_not_logged_in

    @trip=Trip.create(stop:false,driver_id:params["driver_id"],rider_id:params["rider_id"],long_start:params["long_start"],lat_start:params["lat_start"])
    redirect to :"trips/#{@trip.id}"
  end


  get '/trips/:id' do
    redirect_if_not_logged_in
    @trip = Trip.find(params[:id])
    erb :"trips/show"
  end

  post '/trips' do
    redirect_if_not_logged_in
    @trip = Trip.create( :rider => User.current_user(session), :driver => params[:trip][:driver])
    redirect to "/trips/#{@trip.id}"
  end

  get '/trips/end/:id' do
    redirect_if_not_logged_in
    @trip = Trip.find(params[:id])
    erb :"trips/end"
  end

  get '/check/:pay_reference' do
    @trip=Trip.find_by(pay_reference:params[:pay_reference])
    @trip.pay=true
    @trip.wompi_reference=params["id"].present? ? params["id"] : ""
    @trip.save
    redirect to "/trips/#{@trip.id}"
  end

  post '/trips/endtrip' do
    redirect_if_not_logged_in
    @trip = Trip.find(params["trip_id"])
    @trip.long_final=params["long_final"]
    @trip.lat_final=params["lat_final"]
    @trip.time=params["time"]
    data=Operations.calculate_price(@trip.long_start,@trip.lat_start,@trip.long_final,@trip.lat_final,@trip.time)
    @trip.distance=data["distance"]
    @trip.price=data["price"]
    @trip.stop=true
    @trip.pay_reference="#{DateTime.now.strftime("%d%m%Y%H%M")}USER#{@trip.rider_id}".upcase
    @trip.pay=false
    @trip.save
    redirect to "/trips/#{@trip.id}"
  end

end
