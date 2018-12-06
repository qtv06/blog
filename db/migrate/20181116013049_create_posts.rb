class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :tittle
      t.string :content
      t.string :published

      t.timestamps
    end
  end
end
