# frozen_string_literal: true

json.extract! bowl_matchup, :id, :year, :bowl_game_id, :away_team_id, :home_team_id,
              :home_team_point_spread, :created_at, :updated_at
json.url bowl_matchup_url(bowl_matchup, format: :json)
