require 'pry' 

class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs =[]
    self.save
  end
  
  #binding.pry
  #   describe '#add_song' do
  #   it 'keeps track of an artist\'s songs' do
  #     song_one = Song.new("Rock With You")
  #     song_two = Song.new("Smooth Criminal")
  #     artist.add_song(song_one)
  #     artist.add_song(song_two)
  #     expect(artist.songs).to eq([song_one, song_two])
  #   end
  # end
  
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
      Artist.new(name) #self.class.new(name)
    else
      @@all.find { |artist| artist.name == name }
    end
  end
  
  #artist = self.all.find (|a| a.name == name)
  # if != artist
  #   artist = self.new(name)
  # end
  # artist
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end 
  
end


