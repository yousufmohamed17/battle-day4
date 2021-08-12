class Player
  attr_reader :name
  attr_accessor :hp

  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

end