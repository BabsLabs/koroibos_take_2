class DeleteOlympianSport < ActiveRecord::Migration[5.2]
  def change
    drop_table :olympian_sports do |t|
      t.references :olympian, foreign_key: true, null: false
      t.references :sport, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
