class AddArtistColumnBio < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :nationality, :string
    add_column :artists, :role, :string
    add_column :artists, :dob, :integer
    add_column :artists, :dod, :integer
    remove_column :artists, :year
    remove_column :artists, :museum_id
  end
end
