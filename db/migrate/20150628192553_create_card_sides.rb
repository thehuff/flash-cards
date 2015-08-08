class CreateCardSides < ActiveRecord::Migration
  def change
    create_table :card_sides do |t|
      t.belongs_to :card

      t.string :title
      t.string :text
      t.timestamps null: false
    end
  end
end
