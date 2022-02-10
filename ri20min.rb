#!/usr/bin/env ruby

# run in terminal with `ruby ri20min.rb`

class MegaGreeter
  attr_accessor :names

  # create object with default `@names` of `World`

  def initialize(names = "World")
    @names = names
  end

  # say hi to everyone

  def say_hi

    # if `@names` is an `nil`, put `...`

    if @names.nil?
      puts "..."

    # if `@names` is an array, iterate

    elsif @names.respond_to?("each")

      @names.each do |name|
        puts "Hello #{name}!"
      end

    else

      # if `@names` is a string, put it

      puts "Hello #{@names}!"
    end
  end

  # say bye to everyone

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")

      # join list elements with commas

      puts "Goodbye #{@names.join(", ")}. Come back soon!"
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