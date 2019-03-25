class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def set_coach(set_coach)
    return @coach = set_coach
  end

  def add_new_player(name)
    players.push(name)
  end

  def check_player_exists(player)
    players.include?(player)
  end

  def did_team_win()
    @points >= 10
  end

end
