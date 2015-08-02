class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|

    	# user_id
      t.belongs_to :user

      # TODO polymorphic taggable fk column
      # taggable_id (cards, card_sides, study_sessions answer & question)

      t.timestamps null: false
    end
  end
end
