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
    
  def  self.create_by_name(name)
    song = Song.new 
    song.name = name 
    song.save
    song
  end 
  
  def self.find_by_name(name)
     @@all.find{|song| song.name == name}
    end 
  
def self.find_or_create_by_name(name)
      if song.find_by_name(name)
       puts  song 
      else 
        song.create_by_name(name)
      end
    end
  
  def self.find_or_create_by_name(song)
  Song.find_by_name(song)
  Song.create_by_name(song)
  self
  if song = Song.find_by_name(song)
  return song
else song = Song.new
end
  song
end

def self.alphabetical 
  @@all.sort_by {|song| song.name} 
end

def self.new_from_filename(string)
   data =  string.split(/[-.]/)
   artist_name = data[0].strip
   name = data[1].strip
   song = Song.new 
   song.artist_name = artist_name
   song.name = name
   song 
end 

def self.create_from_filename(string)
  data =  string.split(/[-.]/)
   artist_name = data[0].strip
   name = data[1].strip
   song = Song.new 
   song.artist_name = artist_name
   song.name = name
   song 
   song.save
end 
  

def self.destroy_all
  @@all.clear
end 
  

    
end
