class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :board, index: true
      t.references :parent, index: true
      t.integer :likes
      t.references :user, index:true

      t.timestamps
    end
  end
end
