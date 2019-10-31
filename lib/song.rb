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
    #initializes a song
    song = self.new
    #saves song to the @@all class variable...
    # @@all << song
    song.save
    
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song 
  end


end
