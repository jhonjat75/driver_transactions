class Operations

  def self.calculate_price(long_start,lat_start,long_final,lat_final,time)
  # def self.calculate_price()
  #   long_start=-74.2667
  #   lat_start=4.85
  #   long_final=-74.148
  #   lat_final=4.683
  #   time=60 #minutes
    data={}
    distance=harvestine(long_start,lat_start,long_final,lat_final)
    data["distance"]=distance
    pricekm=1000
    priceminute=200
    pricetax=3500
    pricetotal=(distance*pricekm)+(time*priceminute)+pricetax
    data["price"]=pricetotal
    return data

  end

  def self.harvestine(long_start,lat_start,long_final,lat_final)
    distance=0
    km=111.302
    degtorad = 0.01745329;
    radtodeg = 57.29577951;
    dlong = ( long_start- long_final);
    dvalue = (Math.sin( lat_start* degtorad) * Math.sin(lat_final * degtorad)) + (Math.cos(lat_start * degtorad) * Math.cos(lat_final * degtorad) * Math.cos(dlong * degtorad));
    dd = Math.acos(dvalue) * radtodeg;
    distance=(dd * km).round(2)
    return distance
  end

end
