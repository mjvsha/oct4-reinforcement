class Location


  def initialize(name)
  @name = name
  end

  def name
    @name
  end


end


class Trip < Location
  @@destinations = []

  def self.add_location(location)
    #pass the location created from the initalize class here
    @@destinations << location
  end



  def self.itinerary
    puts "Happy journeying!"

    @@destinations.each_cons(2) {|destination_pair|
      puts "Travelled from #{destination_pair[0].name} and then to #{destination_pair[1].name}"

}

    puts "We hope you enjoyed your trip."
  end


  def self.create
    puts "Where do you want to go in this big, beautiful world?"
    location = gets.chomp.strip
      @@destinations << Location.new(location)
      return "I've always wanted to visit #{location}, too."
    end


    def self.all
      @@destinations
    end



end






location = Location.new("New Delhi")
location2 = Location.new("Manchester")
location3 = Location.new("Beijing")


puts Trip.add_location(location)
puts Trip.add_location(location2)
puts Trip.add_location(location3)

puts Trip.create

puts Trip.all

puts "*****"

puts Trip.itinerary
