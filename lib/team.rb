class Team
  attr_reader :name,
              :coach,
              :players,
              :captian

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
    @captian = captian
  end

  def total_salary
    total_salary = 0
    players.map do |player|
      total_salary += player.salary
    end
    return total_salary
  end

  def captian
    @players
    captian = players.max_by do |players|
      players.salary
    end
    return captian.name
  end

  def positions_filled
    @players
    players.map do |player|
      player.position
    end
  end
end
