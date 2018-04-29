require 'pry'
require_relative './modules.rb'

class Song
  extend Music::ClassModule
  include Music::InstanceModule
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    # self.class.all << self
    super
  end

  # def self.find_by_name(name)
  #   @@all.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@all.clear
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@all
  end
end
