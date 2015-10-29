class CreateMessofiitusers < ActiveRecord::Migration
  def change
    create_table :messofiitusers do |t|
      t.string :messusername
      t.string :email
      t.timestamps
      
    end
  end
end
