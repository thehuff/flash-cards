class CreateStudySessionAnswers < ActiveRecord::Migration
  def change
    create_table :study_session_answers do |t|
      t.belongs_to :study_session
      t.belongs_to :card_side

      t.boolean :is_right

      t.timestamps null: false
    end
  end
end
