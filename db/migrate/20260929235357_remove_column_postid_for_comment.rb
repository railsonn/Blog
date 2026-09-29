class RemoveColumnPostidForComment < ActiveRecord::Migration[8.0]
  def change
    remove_column :comments, :post_id, :integer
  end
end
