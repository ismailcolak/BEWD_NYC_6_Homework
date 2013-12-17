
class Salary
  attr_accessor :player, :position, :team, :salary
  def initialize(options)
    @player = options[:player]
    @position = options[:position]
    @team = options[:team]
    @salary = options[:salary]

  end


def to_hash
  return { player: player, position: position, team: team, salary: salary}
end

  def to_s
    "#{player}, Position: #{position}, Team: #{team}, Salary: #{salary}"
  end
end
