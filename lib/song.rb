class Song 
  
  attr_accessor :name, :artist_name
  
  attr_reader :create
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def save 
    self.class.all << self 
  end 
  
  def create(name)
    @name = name 
    @@all << name 
    puts #{name} 
  end 
end 


song = Song.create(name)

