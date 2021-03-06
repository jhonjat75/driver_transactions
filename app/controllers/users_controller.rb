class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect to '/trips'
    else
      erb :"users/signup"
    end
  end

  post '/signup' do
    if invalid_signup?
      flash[:alert] = "Please fill out all fields to sign up."
      redirect to '/signup'
    elsif !!User.find_by(:username => params[:username])
      flash[:alert] = "That username is taken. Please choose a different username or navigate to our login page if you have an account."
      redirect to '/signup'
    else
      user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
      session[:user_id] = user.id
      redirect to "/users/#{user.id}"
    end
  end

  get '/login' do
    if logged_in?
      @current_user ||= User.find(session[:user_id])
      redirect to "/users/#{@current_user.id}"
    else
      erb :"users/login"
    end
  end

  post '/login' do
    if invalid_login?
      flash[:alert] = "Please fill out all fields to log in."
      redirect to '/login'
    else
      user = User.find_by(:username => params[:username])
      if !!user && !!user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect to "/users/#{user.id}"
      else
        flash[:alert] = "We were unable to find an account with those credentials."
        redirect to '/login'
      end
    end
  end

  get '/logout' do
    session.clear if logged_in?
    redirect to '/login'
  end

  get '/users/:id' do
    if !!selected_user
      @user=User.find(params[:id])
      if @user.role=="rider" then
        @trips=@user.rider_trips
      else
        @trips=@user.driver_trips
      end

      erb :"users/show"
    else
      flash[:alert] = "That user does not exist, try selecting a different user."
      redirect to '/trips'
    end
  end


  helpers do
    def invalid_signup?
      params[:email].empty? || params[:username].empty? || params[:password].empty?
    end

    def invalid_login?
      params[:username].empty? || params[:password].empty?
    end
  end


end
