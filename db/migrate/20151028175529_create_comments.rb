class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comments
      t.text :review
      t.timestamps
    end
  end
end
