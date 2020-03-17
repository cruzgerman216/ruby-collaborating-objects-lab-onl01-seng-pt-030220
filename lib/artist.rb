class Artist
<<<<<<< HEAD
  attr_accessor :name
=======
  attr_accessor :name, :songs
>>>>>>> 552575f992b2e39f76e2f539fefbb4ba152c22b2
  @@all = []

  def initialize(name)
    @name = name
<<<<<<< HEAD
    save
=======
    @@all << self
    @songs = []
>>>>>>> 552575f992b2e39f76e2f539fefbb4ba152c22b2
  end

  def self.all
    @@all
  end

  def add_song(song)
<<<<<<< HEAD
    song.artist = self
=======
  #  song.artist = self
    @songs << song
>>>>>>> 552575f992b2e39f76e2f539fefbb4ba152c22b2
  end
  def  save
     @@all << self
   end

<<<<<<< HEAD
  def self.find(para)
    self.all.find{|artist| artist.name == para}
  end
  def self.find_or_create_by_name(para)
   self.find(para) ?  self.find(para) : self.new(para)
  end
  def songs
    Song.all.find_all{|song| song.artist == self}
  end
    def print_songs
      songs.each do |song|
        puts song.name
      end
  end
end
=======
  def self.find_or_create_by_name(para)
    if self.all.find{|artist| artist.name == para}
      self.all.find{|artist| artist.name == para}
    else
      test = self.new(para)
      @@all << self
      test
    end
  end
  def print_songs
    songs.each do |song|
      puts song.name
  end
end
end
>>>>>>> 552575f992b2e39f76e2f539fefbb4ba152c22b2
