class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event
      t.string :games
      t.timestamps
    end
  end
end
