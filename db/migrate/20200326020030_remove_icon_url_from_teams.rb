class RemoveIconUrlFromTeams < ActiveRecord::Migration[6.0]
  def change

    remove_column :teams, :icon_url, :string
  end
end
