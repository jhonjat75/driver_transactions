require './config/environment'
require 'sinatra/flash'
require 'active_record'
require 'sinatra/activerecord'


if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use TripsController
use UsersController
run ApplicationController
