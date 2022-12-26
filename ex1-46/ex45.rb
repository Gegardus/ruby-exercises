class Song
    attr_accessor :name, :artist, :jenre
  
    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
  
      @@count += 1
      @@artists << artist
      @@genres << genre
      @@all << self
    end
  
    def self.count 
      @@count
    end
  
    def self.artists
      @@artists.uniq
    end
  
    def self.all
      @@all
    end
  
    song1 = Song.new("Ola", "Dylan", "Folk")
    song2= Song.new("Vuala", "Bize", "Classic")
    song3 = Song.new("Mond", "Armstrong", "Jazz")
    song4 = Song.new("Love", "Sintara", "Pop")
  
  #   p Song.all
  #   p Song.artists
  
    def self.return_values
      return "return call"
      "no return call"
    end
  
    p Song.return_values
  
    def self.implicit_return
      "no return call 1"
      "no return call 2"
    end
  
    p Song.implicit_return
  
    def self.puts_and_return
      puts "puts"
      return "call"
    end
  
    p Song.puts_and_return
  end
  