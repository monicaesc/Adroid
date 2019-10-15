class DeleteColumnExhibitionId < ActiveRecord::Migration[6.0]
  def change
    remove_column :exhibitions, :exhibition_id
  end
end
