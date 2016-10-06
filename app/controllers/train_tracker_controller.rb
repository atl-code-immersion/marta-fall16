class TrainTrackerController < ApplicationController
  
  def index

  	trains = HTTParty.get("http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?apikey=#{ENV['marta_api_key']}")

  	@stations = []

  	trains.each do |t|
  		@stations.push(t["STATION"])
  	end

  	@stations.uniq!

  	if params[:station] != nil
  		@my_station = params[:station]

  		@coming_trains = []

  		trains.each do |train|
  			if @my_station == train["STATION"]
  				@coming_trains.push(train)
  			end
  		end
  	end

  end

end
