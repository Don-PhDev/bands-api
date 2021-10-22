class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.references :band, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
