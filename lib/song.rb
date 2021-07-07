class Song
  attr_accessor :name, :artist_name
  attr_reader :all, :create, :save
  @@all = []

 def initialize(name,artist_name)
   @name = name 
   @artist_name = artist_name 
 end 
 
  def self.all
    @all = all
    @@all
  end


 def self.create
   @create = create
   @@all << self 
   Song.all.include?(name)
    puts "#{self}"
  end 
  
  def self.save
    @save = save 
    self.class.all << self
  end
  
  def self.new_by_name(song_name)
    song = Song.new_by_name("song_name")
  end 
  
  def self.create_by_name(song_name)
    song=Song.create_by_name("song_name")
    self.class.all << self 
    Song.all.include?(song)
  end 
  
  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end 
  
  def find_or_create_by_name(song_name)
  end 
  
  def self.alphabetical 
    song.all.sort_by(alphabetical)
  end 
  
  def self.new_from_filename(name,artist_name,format)
    song.name = name
    song.artist_name = artist_name
    song.format = format 
  end 
  
  def self.create_from_filename
    song.all.each do |name,artist_name,format|
      puts "#{name}"
      @@all << name 
    end 
  end 
  
  def self.destroy_all 
    self.all.clear
  end 

end
