require 'pry' 

class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs =[]
    self.save
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name == name } == nil
      Artist.new(name)      #self.class.new(name)
    else
      @@all.find { |artist| artist.name == name }
    end
    
    #or
    #artist = self.all.find (|a| a.name == name)
    # if != artist
    #   artist = self.new(name)
    # end
    # artist
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end 
  
end


