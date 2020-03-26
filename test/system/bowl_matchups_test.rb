require "application_system_test_case"

class BowlMatchupsTest < ApplicationSystemTestCase
  setup do
    @bowl_matchup = bowl_matchups(:one)
  end

  test "visiting the index" do
    visit bowl_matchups_url
    assert_selector "h1", text: "Bowl Matchups"
  end

  test "creating a Bowl matchup" do
    visit bowl_matchups_url
    click_on "New Bowl Matchup"

    fill_in "Away team", with: @bowl_matchup.away_team
    fill_in "Bowl game", with: @bowl_matchup.bowl_game
    fill_in "Home team", with: @bowl_matchup.home_team
    fill_in "Home team point spread", with: @bowl_matchup.home_team_point_spread
    fill_in "Year", with: @bowl_matchup.year
    click_on "Create Bowl matchup"

    assert_text "Bowl matchup was successfully created"
    click_on "Back"
  end

  test "updating a Bowl matchup" do
    visit bowl_matchups_url
    click_on "Edit", match: :first

    fill_in "Away team", with: @bowl_matchup.away_team
    fill_in "Bowl game", with: @bowl_matchup.bowl_game
    fill_in "Home team", with: @bowl_matchup.home_team
    fill_in "Home team point spread", with: @bowl_matchup.home_team_point_spread
    fill_in "Year", with: @bowl_matchup.year
    click_on "Update Bowl matchup"

    assert_text "Bowl matchup was successfully updated"
    click_on "Back"
  end

  test "destroying a Bowl matchup" do
    visit bowl_matchups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bowl matchup was successfully destroyed"
  end
end
