#!/usr/bin/env ruby

class MegaGreeter
    attr_accessor :names
    #Create the object
    def initialize(names = nil)
        @names = names
    end
    
    #Say hi to everybody
    def say_hi
        if @names.nil?
            puts "Hi anonymous!"
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end
    def say_bye
        if @names.nil?
            puts "Bye anonymous!"
        elsif @names.respond_to?("join")
            puts "Bye #{@names.join(", ")}."
        else
            puts "Bye #{@names}!"
        end
    end
end

if __FILE__ == $0
    puts "start program"
    greeter = MegaGreeter.new(["BAE", "PARK", "KANG"])
    greeter.say_hi
    greeter.say_bye
    puts Dir.pwd
end
