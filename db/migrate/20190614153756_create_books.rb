class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.integer :publishedDate
      t.string :thumbnail
      t.text :description
      t.integer :pageCount
      t.float :averageRating
      t.integer :ratingsCount
      t.boolean :maturityRating

      t.timestamps
    end
  end
end
