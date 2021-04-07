class Player
  attr_reader :name,
              :position,
              :salary
  def initialize(player_status)
    @name = player_status[:name]
    @position = player_status[:position]
    @salary = player_status[:salary]
  end
end
