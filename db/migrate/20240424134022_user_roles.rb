class UserRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :user_roles do |t|
      t.references :users, null: false, foreign_key: true, index: true
      t.references :roles, null: false, foreign_key: true, index: true
    end
  end
end
