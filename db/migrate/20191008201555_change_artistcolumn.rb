class ChangeArtistcolumn < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :year, :integer
    add_column :artists, :museum_id, :integer
    remove_column :artists, :location, :string
  end
end
