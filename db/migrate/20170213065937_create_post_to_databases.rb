class CreatePostToDatabases < ActiveRecord::Migration[5.0]
  def change
    create_table :post_to_databases do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
