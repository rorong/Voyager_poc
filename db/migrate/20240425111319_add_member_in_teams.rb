class AddMemberInTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :add_member_in_teams do |t|
      t.references :team, null: false, foreign_key: true, index: true
      t.references :user, null: false, foreign_key: true, index: true
      t.references :role, null: false, foreign_key: true, index: true

      t.timestamps
    end

    add_index :add_member_in_teams, [:team_id, :user_id, :role_id], unique: true
  end
end
