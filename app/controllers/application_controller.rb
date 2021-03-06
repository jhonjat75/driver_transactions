class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions unless test?
    set :session_secret, "secret"
    register Sinatra::Flash
  end

  get '/' do
    redirect_if_not_logged_in
    @current_user ||= User.find(session[:user_id])
    redirect to "/users/#{@current_user.id}"

  end


  helpers do
    def current_user
      @current_user ||= User.find(session[:user_id]) if logged_in?
    end

    def selected_user
      @selected_user = User.find_by_id(params[:id])
    end

    def current_recipe
      @current_recipe ||= Recipe.find_by_id(params[:id])
    end

    def logged_in?
      !!session[:user_id]
    end

    def redirect_if_not_logged_in
       redirect to '/login' if !logged_in?
    end
  end

end
