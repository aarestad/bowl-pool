class CreateBowlMatchups < ActiveRecord::Migration[6.0]
  def change
    create_table :bowl_matchups do |t|
      t.integer :year
      t.references :bowl_game, null: false, foreign_key: true
      t.references :away_team, null: false, foreign_key: {to_table: :teams}
      t.references :home_team, null: false, foreign_key: {to_table: :teams}
      t.integer :home_team_point_spread

      t.timestamps
    end
  end
end
