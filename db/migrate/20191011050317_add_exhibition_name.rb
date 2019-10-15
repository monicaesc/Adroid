class AddExhibitionName < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :name, :string
  end
end
