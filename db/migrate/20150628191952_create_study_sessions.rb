class CreateStudySessions < ActiveRecord::Migration
  def change
    create_table :study_sessions do |t|

      t.belongs_to :user

      # TODO polymorphic taggable fk column
      # card_side_answer_tag (s?)
      # card_side_question_tag (s?)


      t.timestamps null: false
    end
  end
end
