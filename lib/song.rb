
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create 
    song = self.new 
    song.save 
    song
  end 
 
  def self.create_by_name(string_name_of_the_song) 
    song = self.new 
    song.name = string_name_of_the_song
    song.save 
    song
  end
 
  def self.new_by_name(string_name_of_the_song)
    song = self.new 
    song.name = string_name_of_the_song
    song
  end 
  
  def self.find_by_name(string_name_of_the_song)
    self.all.detect {|i| i.name == string_name_of_the_song}
  end
  
  def self.find_or_create_by_name(find_this_song)
   self.find_by_name(find_this_song) || self.create_by_name(find_this_song)
  end 

  def self.alphabetical
    self.all.sort_by { |x| x.name}
  end 
  
  def self.new_from_filename(mp3_formatted_file)
    parts = mp3_formatted_file.split(" - ")
    artist = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.create
    song.artist_name = artist
    song.name = song_name
    song
  end 
  
  def self.create_from_filename(mp3_formatted_file)
    song = new_from_filename(mp3_formatted_file)
    song.save
    song
  end
 
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def self.destroy_all
    self.all.clear
  end
 
end

