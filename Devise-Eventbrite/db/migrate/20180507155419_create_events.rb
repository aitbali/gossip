class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :description
      t.string :place
      t.integer :price
      t.datetime :date
      t.integer :creator_id

      t.timestamps
    end
  end
end
