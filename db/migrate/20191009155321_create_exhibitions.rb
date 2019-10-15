class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
        t.string :exhibition_id
        t.integer :museum_id
        t.integer :artist_id
    end
  end
end
