# frozen_string_literal: true

class BowlMatchup < ApplicationRecord
  belongs_to :bowl_game
  belongs_to :away_team, class_name: 'Team'
  belongs_to :home_team, class_name: 'Team'
end
