require 'pry'

class Song
  extend Memorable::ClassMethods
    include Memorable
  extend Findable::ClassMethods
    include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
