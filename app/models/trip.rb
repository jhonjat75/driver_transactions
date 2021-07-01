class Trip < ActiveRecord::Base
  belongs_to :driver, :class_name => "User"
  alias_attribute :user_id, :driver_id
  belongs_to :rider, :class_name => "User"
  alias_attribute :rider_id, :rider_id
end
