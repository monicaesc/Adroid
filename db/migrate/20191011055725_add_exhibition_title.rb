class AddExhibitionTitle < ActiveRecord::Migration[6.0]
  def change
    remove_column :exhibitions, :name
    add_column :exhibitions, :department, :string
    add_column :exhibitions, :title, :string
    add_column :exhibitions, :object_date, :string
    add_column :exhibitions, :link, :string
  end
end
