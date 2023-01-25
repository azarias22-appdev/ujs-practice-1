# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  content    :text
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :string
#
class Task < ApplicationRecord
  belongs_to :user

  validates :content, presence: true

  enum status: {
    not_yet_started: "not_yet_started",
    in_progress: "in_progress",
    completed: "completed"
  }

end
