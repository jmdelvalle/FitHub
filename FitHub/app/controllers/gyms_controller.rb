class GymsController < ApplicationController
  def index
  end

  def results
    search = params[:keyword]
    @city = params[:city]
    api_key = "AIzaSyBNlEoTVzUn-VAoNUeUOSxWt5n40z8DaME"
    client = GooglePlaces::Client.new(api_key)
    @gyms = client.spots_by_query("#{search} near #{@city}, NY", :types => "gym", :radius => 8000)
  end
end
