class Activity < ApplicationRecord
  belongs_to :journal_entry
  belongs_to :exercise
end
