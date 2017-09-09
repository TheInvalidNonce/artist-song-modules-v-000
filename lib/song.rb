require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
    include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
