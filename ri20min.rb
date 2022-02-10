################## NOTES ################## 
  
  #!/usr/bin/env ruby

# run in terminal with `ruby ri20min.rb`

################## CREATE CLASS ################## 

class MegaGreeter

  # create object

  attr_accessor :names

  #  assign `@names` to default value of `World`

  def initialize(names = "World")
    @names = names
  end

  ################## SAY HI ################## 

  def say_hi

    # if `@names` is an `nil`, put `...`

    if @names.nil?
      puts "..."

    # if `@names` is an array, iterate

    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end

    # if `@names` is a string, put it  

    else
      puts "Hello #{@names}!"
    end

  end

  ################## SAY BYE ################## 

  def say_bye

    # if `@names` is an `nil`, put `...`

    if @names.nil?
      puts "..."

    # if `@names` is an array, join with commas

    elsif @names.respond_to?("join")

      puts "Goodbye #{@names.join(", ")}. Come back soon!"

    # if `@names` is a string, put it  

    else
      puts "Goodbye #{@names}. Come back soon!"
    end

  end
 
end


if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # reassign `@names` to "Human"
  
  mg.names = "Human"
  mg.say_hi
  mg.say_bye

  # reassign `@names` to array of names

  mg.names = ["Hayley", "Drew", "Charmmykitty", "Embercat", "Kittay"]
  mg.say_hi
  mg.say_bye

  # change `@names` to `nil`
  mg.names = nil
  mg.say_hi
  mg.say_bye
end