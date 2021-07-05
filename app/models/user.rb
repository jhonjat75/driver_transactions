class User < ActiveRecord::Base
  has_many :driver_trips, :class_name=>'Trip', :foreign_key => 'driver_id'
  has_many :rider_trips, :class_name=>'Trip', :foreign_key => 'rider_id'
  has_secure_password

  def self.current_user(session)
    User.find(session[:user_id])
  end

  def self.logged_in?(session)
    !!session[:user_id]
  end

end
