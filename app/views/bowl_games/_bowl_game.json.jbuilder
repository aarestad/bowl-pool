# frozen_string_literal: true

json.extract! bowl_game, :id, :name, :created_at, :updated_at
json.url bowl_game_url(bowl_game, format: :json)
