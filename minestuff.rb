# module style

# require "./mystuff.rb"
# MyStuff.apple
# puts MyStuff::TANGERINE

class MyStuff
    def initialize()
      @tangerine = "And now a thousand years between"
    end

    attr_reader :tangerine
    attr_writer :tangerine

    def apple()
      puts "I AM CLASSY APPLES!"
    end
end

# class style

thing = MyStuff.new
thing.apple()
thing.tangerine = "Ani"
@tangerine = "ANI"
puts thing.tangerine
puts @tangerine
