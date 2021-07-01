driver1 = User.create(:username => "pruebadriver", :email => "pruebadriver@gmail.com", :password => "123456789",:role=>"driver")
rider = User.create(:username => "pruebarider", :email => "pruebarider@gmail.com", :password => "123456789",:rider=>"rider")
trip1= Trip.create(:driver_id=>driver1.id,:rider_id=>rider.id)
