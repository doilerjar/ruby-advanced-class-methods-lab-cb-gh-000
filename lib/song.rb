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
  
  def self.find_or_crate_by_name(name)
    song = self.find_by_name(name)
    if song = nil
      song = create_by_name(name)
    end
    return song
  end
  
  def self.destroy_all
    @@all = []
  end 
  
end
