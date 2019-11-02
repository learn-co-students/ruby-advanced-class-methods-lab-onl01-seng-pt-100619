require 'pry'

class Song
  attr_accessor :name, :artist_name, :new_name
  
  @@all = []
  
  
 
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song 
    song 
  end
  
  def self.new_by_name(song)
    new_name=Song.new
    new_name.name=song
    new_name
    #ALTERNATIVE WAY (USING A METHOD)
    # new_name.instance_variable_set(:@name, song)
    # new_name
  end
  
  def self.create_by_name(song)
    new_name = Song.create
    new_name.name = song
    new_name
  end
  
  def self.find_by_name(song)
    @@all.detect{|i| i.name == song ? i : nil }
  end
  
  def self.find_or_create_by_name(song)
    if self.find_by_name(song) == nil 
      self.create_by_name(song)
    else
      self.find_by_name(song)
    end
  end
  
  def self.alphabetical
    @@all.sort_by{|song| song.name}
  end
  
  def self.new_from_filename(song)
    newly_formatted = song.scan(/^(.+)\s+-\s+(.+(?=.mp3))/)
    newly_formatted_song = Song.new
    newly_formatted_song.artist_name = newly_formatted[0][0]
    newly_formatted_song.name = newly_formatted[0][1]
    newly_formatted_song
  end
  
  def self.create_from_filename(song)
    self.new_from_filename(song).save
  end
  
  def self.destroy_all
    @@all.clear
  end
  
end