# frozen_string_literal: true

require 'application_system_test_case'

class BowlGamesTest < ApplicationSystemTestCase
  setup do
    @bowl_game = bowl_games(:one)
  end

  test 'visiting the index' do
    visit bowl_games_url
    assert_selector 'h1', text: 'Bowl Games'
  end

  test 'creating a Bowl game' do
    visit bowl_games_url
    click_on 'New Bowl Game'

    fill_in 'Name', with: @bowl_game.name
    click_on 'Create Bowl game'

    assert_text 'Bowl game was successfully created'
    click_on 'Back'
  end

  test 'updating a Bowl game' do
    visit bowl_games_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @bowl_game.name
    click_on 'Update Bowl game'

    assert_text 'Bowl game was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Bowl game' do
    visit bowl_games_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Bowl game was successfully destroyed'
  end
end
