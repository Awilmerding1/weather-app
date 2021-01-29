class Cli

  def welcome
    puts "Welcome to the weather cli app!"
    self.prompt_for_zip
  end

  def prompt_for_zip
    puts "Please enter your zip code"
    # input = gets.strip
    Api.get_weather_by_zip
    # do something with the zip code
  end

end
