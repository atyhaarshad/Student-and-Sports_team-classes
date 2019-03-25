require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("A-team", ["Alpha", "Bob", "Ben"], "Coach-A" )
    assert_equal("A-team", sports_team.team_name)
  end

  def test_get_players
    sports_team = SportsTeam.new("A-Team", ["Alpha", "Bob", "Ben"], "Coach-A")
    assert_equal(["Alpha", "Bob", "Ben"], sports_team.players)
  end

  def test_get_coach
    sports_team = SportsTeam.new("A-Team", ["Alpha", "Bob", "Ben"], "Coach-A")
    assert_equal("Coach-A", sports_team.coach)
  end

  def test_set_coach
    sports_team = SportsTeam.new("A-Team", ["Alpha", "Bob", "Ben"], "Coach-A")
    sports_team.set_coach("Coach-B")
    assert_equal("Coach-B", sports_team.coach)
  end

  def test_add_new_player
    sports_team = SportsTeam.new("A-Team", [], "Coach-A")
    sports_team.add_new_player("Jo")
    assert_equal("Jo", sports_team.players[0])
  end

  def test_check_player_exists

    sports_team = SportsTeam.new("A-Team", ["Jo"], "Coach-A")
    playerExists = sports_team.check_player_exists("Jo")

    assert_equal(true, playerExists)
  end

  def test_did_team_win
    sports_team = SportsTeam.new("A-Team", ["Jo"], "Coach-A")
    sports_team.points = 20
    did_win = sports_team.did_team_win()
    assert_equal(true, did_win)
  end

end
