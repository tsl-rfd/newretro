class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :retro_id
      t.integer :category_id
      t.string :note

      t.timestamps
    end
  end
end
