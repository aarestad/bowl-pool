class BowlMatchup < ApplicationRecord
  belongs_to :bowl_game
  belongs_to :away_team
  belongs_to :home_team
end
