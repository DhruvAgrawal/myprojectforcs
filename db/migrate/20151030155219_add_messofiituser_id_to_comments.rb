class AddMessofiituserIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :messofiituser_id, :integer
  end
end
