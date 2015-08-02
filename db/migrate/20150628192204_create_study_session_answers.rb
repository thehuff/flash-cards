class CreateStudySessionAnswers < ActiveRecord::Migration
  def change
    create_table :study_session_answers do |t|
    	t.belongs_to :study_session
    	# card_side_id
      # t.has_one :card_side

    	t.boolean :is_right

      t.timestamps null: false
    end
  end
end
