# From spec 
#   let(:song) {Song.new('Man in the Mirror')}
#   let(:file_name) {'Michael Jackson - Black or White - pop.mp3'}


class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    #accepts a name for the song (FAILED - 12)
    @name = name
  end
  
  # describe '#artist=' do
  #   it 'sets the artist object to belong to the song' do
  #     new_artist_object = Artist.new('King of Pop')
  #     song.artist = new_artist_object
  #     expect(song.artist).to eq(new_artist_object)
  #   end
  # end

  # def artist=(artist)
  #   #sets the artist object to belong to the song (FAILED - 14)
  #   @artist = artist
  # end
  
  def self.new_by_filename(filename)
    #creates a new instance of a song from the file that's passed (FAILED - 15)
    #associates new song instance with the artist from the filename (FAILED - 16)
    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = Song.new(name)
    song.artist_name=(artist)
    song
    # artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    # song = self.new(song_name)
    # song.artist = Artist.find_or_create_by_name(artist_name)
    # song
  end
  
  def artist_name=(artist)
    # if (self.artist.nil?)
    #   self.artist = Artist.new(name)
    # else
    #   self.artist.name = name
    # end
    @artist = artist
    @artist.add_song(self) unless @artist.songs.include?(self)
  end
  
end