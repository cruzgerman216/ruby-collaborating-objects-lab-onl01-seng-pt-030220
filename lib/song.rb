class Song
  attr_accessor :artist, :name
<<<<<<< HEAD
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
=======
  @@songs = []
  def initialize(name)
    @name = name
    @@songs << self
>>>>>>> 552575f992b2e39f76e2f539fefbb4ba152c22b2
  end


  def self.all
<<<<<<< HEAD
    @@all
  end

  def self.new_by_filename(file)
    arr = file.split(" - ")
    song = self.new(arr[1])
    song.artist = Artist.new(arr[0])
    song
  end

def self.find(para)
  self.all.find{|artist| }
end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
=======
    @@songs
  end

  def self.new_by_filename(file)
    ##file.name
>>>>>>> 552575f992b2e39f76e2f539fefbb4ba152c22b2
  end
end
