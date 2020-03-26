require 'test_helper'

class BowlMatchupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowl_matchup = bowl_matchups(:one)
  end

  test "should get index" do
    get bowl_matchups_url
    assert_response :success
  end

  test "should get new" do
    get new_bowl_matchup_url
    assert_response :success
  end

  test "should create bowl_matchup" do
    assert_difference('BowlMatchup.count') do
      post bowl_matchups_url, params: { bowl_matchup: { away_team_id: @bowl_matchup.away_team_id, bowl_game_id: @bowl_matchup.bowl_game_id, home_team_id: @bowl_matchup.home_team_id, home_team_point_spread: @bowl_matchup.home_team_point_spread, year: @bowl_matchup.year } }
    end

    assert_redirected_to bowl_matchup_url(BowlMatchup.last)
  end

  test "should show bowl_matchup" do
    get bowl_matchup_url(@bowl_matchup)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowl_matchup_url(@bowl_matchup)
    assert_response :success
  end

  test "should update bowl_matchup" do
    patch bowl_matchup_url(@bowl_matchup), params: { bowl_matchup: { away_team_id: @bowl_matchup.away_team_id, bowl_game_id: @bowl_matchup.bowl_game_id, home_team_id: @bowl_matchup.home_team_id, home_team_point_spread: @bowl_matchup.home_team_point_spread, year: @bowl_matchup.year } }
    assert_redirected_to bowl_matchup_url(@bowl_matchup)
  end

  test "should destroy bowl_matchup" do
    assert_difference('BowlMatchup.count', -1) do
      delete bowl_matchup_url(@bowl_matchup)
    end

    assert_redirected_to bowl_matchups_url
  end
end
