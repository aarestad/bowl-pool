# frozen_string_literal: true

require 'test_helper'

class BowlGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowl_game = bowl_games(:one)
  end

  test 'should get index' do
    get bowl_games_url
    assert_response :success
  end

  test 'should get new' do
    get new_bowl_game_url
    assert_response :success
  end

  test 'should create bowl_game' do
    assert_difference('BowlGame.count') do
      post bowl_games_url, params: { bowl_game: { name: @bowl_game.name } }
    end

    assert_redirected_to bowl_game_url(BowlGame.last)
  end

  test 'should show bowl_game' do
    get bowl_game_url(@bowl_game)
    assert_response :success
  end

  test 'should get edit' do
    get edit_bowl_game_url(@bowl_game)
    assert_response :success
  end

  test 'should update bowl_game' do
    patch bowl_game_url(@bowl_game), params: { bowl_game: { name: @bowl_game.name } }
    assert_redirected_to bowl_game_url(@bowl_game)
  end

  test 'should destroy bowl_game' do
    assert_difference('BowlGame.count', -1) do
      delete bowl_game_url(@bowl_game)
    end

    assert_redirected_to bowl_games_url
  end
end
