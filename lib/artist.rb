require 'pry' 

class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs =[]
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
    # song.artist = self
    # @songs << song
    #binding.pry
    #from v--> 
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name == name } == nil
      artist = Artist.new(name)
    else
      @@all.find { |artist| artist.name == name }
    end
    #from v--> 
    #self.find(name) || self.create(name)
  end
  
  
  # describe '#print_songs' do
  #   it 'lists all of the artist\'s songs' do
  #     dirty_diana = Song.new("Dirty Diana")
  #     billie_jean = Song.new("Billie Jean")
  #     artist.add_song(dirty_diana)
  #     artist.add_song(billie_jean)
  #     expect{artist.print_songs}.to output("Dirty Diana\nBillie Jean\n").to_stdout
  #   end
  # end
  
  #binding.pry
  def print_songs
    #binding.pry 
    @songs.each do |song|
      puts song.name
    end
  end 
  
end


##

# class Artist 
#   attr_accessor :songs, :name
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @songs = []
#     @@all << self (#or in save)
#   end
  
  
  
  # def self.find_or_create_by_name(name)
  #   self.all.find { |artist| artist.name == name} ? self.all.find { |artist| artist.name == name} : Artist.new(name)
    
  #   ##ORR
  #   if self.all.find { |artist| artist.name == name} 
  #     self.all.find { |artist| artist.name == name} 
  #   else 
  #     Artist.new(name)
  #   end
  
  
