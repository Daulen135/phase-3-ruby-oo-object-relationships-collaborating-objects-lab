require 'pry'

class Artist
    attr_accessor :name, :songs
    @@all = []
  
    def initialize(name)
      @name = name
      @songs = []
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def add_song(song)
      @songs << song
    end
  
    def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : self.create(name)
    end
  
    def self.find(name)
      self.all.find { |artist| artist.name == name }
    end
  
    def self.create(name)
      self.new(name).tap { |artist| artist.save }
    end
  
    def save
      @@all << self
    end
  
    def print_songs
      songs.each { |song| puts song.name }
    end
  end



















# class Artist
#     attr_accessor :name
#     @@ll =[]
    
#     def initialize(name)
#         @name = name
#         # @song =[]
#     end

#     def self.all
         
#         @@all 
#         # binding.pry
#     end

#     def songs
        
#         # @song <<song
#         Song.all.select {|song| self ==song.artist}
#     end

#     def add_song(song)
#         song.artist = self
#     end

#     def self.find_or_create_by_name(name)
#         self.all.detect {|artist|artist.name==name}||Artist.new(name)
#     end

#     def print_songs
#         songs.each{|song|puts song.name}
#     end

# end
