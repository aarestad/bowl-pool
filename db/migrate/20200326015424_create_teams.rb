class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :abbrev
      t.string :icon_url

      t.timestamps
    end
  end
end
