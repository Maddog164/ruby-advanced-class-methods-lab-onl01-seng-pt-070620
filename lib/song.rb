require 'pry'
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
    #binding.pry
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    #if self.find_by_name(name) == false
    #  self.create_by_name(name)
    #end
    #binding.pry
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    #binding.pry
    @@all.sort_by { |song| song.name}
  end

  def self.new_from_filename(filename)
    song_name = ""
    artist_name = ""
    song_name = filename.split("-")[0].strip
    artist_name = filename.split("-")[1].strip
    binding.pry


  end




end
