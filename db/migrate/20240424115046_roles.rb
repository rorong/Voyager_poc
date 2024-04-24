class Roles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""
    end
  end
end
