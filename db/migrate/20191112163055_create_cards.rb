class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :first_Name
      t.string :last_Name
      t.string :address

      t.timestamps
    end
  end
end
