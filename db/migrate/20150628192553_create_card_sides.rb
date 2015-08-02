class CreateCardSides < ActiveRecord::Migration
  def change
    create_table :card_sides do |t|

    	# card_id
      t.belongs_to :card

    	# text
      t.string :text

      t.timestamps null: false
    end
  end
end
