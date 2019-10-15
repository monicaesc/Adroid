class CreateMetObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :met_objects do |t|
      t.string :artist_display_name
      t.string :artist_display_bio
      t.string :artist_display_nationality
      #t.string :artist_display_begin_date
      #t.string :artist_display_end_date
    end
  end
end
