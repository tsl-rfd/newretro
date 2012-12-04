class CreateRetros < ActiveRecord::Migration
  def change
    create_table :retros do |t|
      t.date :captured_on

      t.timestamps
    end
  end
end
