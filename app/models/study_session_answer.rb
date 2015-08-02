class StudySessionAnswer < ActiveRecord::Base
  belogs_to :study_session
  has_one :card_side
end
