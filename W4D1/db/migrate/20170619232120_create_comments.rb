class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :artwork_id
      t.text :body
      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :artwork_id
  end
end
