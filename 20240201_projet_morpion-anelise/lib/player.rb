require_relative 'board'

class Player
  attr_accessor :name, :value 
  
  def initialize(name, value)
      @name = name
      @value = value
  end
end