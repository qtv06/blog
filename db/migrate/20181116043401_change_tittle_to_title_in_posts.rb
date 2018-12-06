class ChangeTittleToTitleInPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :tittle, :title
  end
end
