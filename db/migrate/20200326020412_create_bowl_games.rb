class CreateBowlGames < ActiveRecord::Migration[6.0]
  def change
    create_table :bowl_games do |t|
      t.string :name

      t.timestamps
    end
  end
end
