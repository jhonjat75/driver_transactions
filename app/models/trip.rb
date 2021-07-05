class Trip < ActiveRecord::Base
  belongs_to :driver, :class_name => "User", :foreign_key => 'driver_id'
  belongs_to :rider, :class_name => "User", :foreign_key => 'rider_id'

end
