class CreateReceptions < ActiveRecord::Migration[7.0]
  def change
    create_table :receptions do |t|
      t.integer :patient
      t.boolean :activity
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
