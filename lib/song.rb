

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}

  end

  def self.find_or_create_by_name(name)
  Song.find_by_name(name)
  Song.create_by_name(name)
  self
  if song = Song.find_by_name(name)
  return song
else song = Song.new
end
  song

  end

  def self.alphabetical
    @@all.sort_by {|song| song.name}
  end

  def self.new_from_filename(name)

     new_name = name.split(" - ")
     song = Song.new
     song.artist_name = new_name[0]
     song.name = new_name[1].gsub(".mp3","")
     song

  end

  def self.create_from_filename(name)

    new_name = name.split(" - ")
    song = Song.create
    song.artist_name = new_name[0]
    song.name = new_name[1].gsub(".mp3","")
    song

  end

  def self.destroy_all
    @@all.clear
  end

end
