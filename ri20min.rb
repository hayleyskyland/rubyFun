#!/usr/bin/env ruby

# run in terminal with `ruby ri20min.rb`

class MegaGreeter
  attr_accessor :names

  # create object with default `name` of `World`

  def initialize(names = "World")
    @names = names
  end

  # say hi to everyone

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say bye to everyone

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
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

  # reassign `name` to "Human"
  
  mg.names = "Human"
  mg.say_hi
  mg.say_bye

  # reassign `name` to array of names

  mg.names = ["Hayley", "Drew", "Charmmykitty", "Embercat", "Kittay"]
  mg.say_hi
  mg.say_bye

  # change `name`` to `nil`
  mg.names = nil
  mg.say_hi
  mg.say_bye
end