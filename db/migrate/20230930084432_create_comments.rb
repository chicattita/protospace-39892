# 20230930084432_create_comments.rb
class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
      t.references :prototype, null: false, foreign_key: true
      t.timestamps
    end
  end
end
