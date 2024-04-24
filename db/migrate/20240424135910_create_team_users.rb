class CreateTeamUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :team_users do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :team, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
