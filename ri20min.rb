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

    # if `@names` is an array, iterate with ruby's version of forEach()

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

################## KICK OFF SCRIPT ################## 

# `__FILE__` is the magic variable that contains the name of the current file.

# `$0` is the name of the file used to start the program.

# "If this is the main file being used, then do this."

# The code here allows does NOT execute a file that should be used as a library, but it DOES execute a file that's supposed to be an executable.

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

  # reassign `@names` to `nil`

  mg.names = nil
  mg.say_hi
  mg.say_bye
end