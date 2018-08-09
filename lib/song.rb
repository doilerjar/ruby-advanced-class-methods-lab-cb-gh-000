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
      song = self.new
      @@all << song
      song
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name
    @@all << song
    song
  end 
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end 
  
  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end
    end
    return nil 
  end
  
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    if song == nil
      song = self.create_by_name(name)
    end
    return song
  end
  
  def self.destroy_all
    @@all = []
  end 
  
  def self.alphabetical
    @@all.sort_by do |song|
      song.name
    end
  end
  
  def self.new_from_filename(name)
    song = self.new
    song.name = 
    self.new_by_name(name.split(".")[0])
  end 
  
  
  def self.create_from_filename(name)
    self.create_by_name(name.split(".")[0])
  end 
  
  
  
end
