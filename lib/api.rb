class Api

  @@api_key = "7d5bfbb43d99e6d1ec4a2d93bb9b52b6"

  @@url = "http://api.openweathermap.org/data/2.5/weather?zip=94115,us&appid=#{@@api_key}"

  def self.get_weather_by_zip
      response = HTTParty.get(@@url)
      binding.pry
  end


end

# Api.get_weather_by_zip
# api_key = "7d5bfbb43d99e6d1ec4a2d93bb9b52b6"
# url = "http://api.openweathermap.org/data/2.5/weather?zip=#{zip_code},us&appid=#{api_key}"
