class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
