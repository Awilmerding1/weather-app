class Api

  @@api_key = "7d5bfbb43d99e6d1ec4a2d93bb9b52b6"


  def self.get_weather_by_zip(zip)
      url = "http://api.openweathermap.org/data/2.5/weather?zip=#{zip},us&units=imperial&appid=#{@@api_key}"
      response = HTTParty.get(url)

      if response["message"]
        return false
      end
      weather_hash = {name: response["name"], wind_speed: response["wind"]["speed"], temp: response["main"]["temp"], feels_like: response["main"]["feels_like"], cloud_cover: response["weather"][0]["description"]}
      Location.new(weather_hash)
  end


end

# Api.get_weather_by_zip
# api_key = "7d5bfbb43d99e6d1ec4a2d93bb9b52b6"
# url = "http://api.openweathermap.org/data/2.5/weather?zip=#{zip_code},us&appid=#{api_key}"
