class StudySessionAnswer < ActiveRecord::Base
  belongs_to :study_session
  has_one :card_side
end
