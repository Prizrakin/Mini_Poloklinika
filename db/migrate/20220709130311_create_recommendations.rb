class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.string :text
      t.belongs_to :reception, null: false, foreign_key: true

      t.timestamps
    end
  end
end
