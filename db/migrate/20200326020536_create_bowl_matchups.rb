class CreateBowlMatchups < ActiveRecord::Migration[6.0]
  def change
    create_table :bowl_matchups do |t|
      t.integer :year
      t.BowlGame :bowl_game
      t.Team :away_team
      t.Team :home_team
      t.integer :home_team_point_spread

      t.timestamps
    end
  end
end
