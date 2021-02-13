class CreateStationLines < ActiveRecord::Migration[6.0]
  def change
    create_table :station_lines do |t|
      t.references :station, null: false, foreign_key: true
      t.references :line, null: false, foreign_key: true

      t.timestamps
    end
  end
end
