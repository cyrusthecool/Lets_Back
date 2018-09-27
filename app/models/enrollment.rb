# == Schema Information
#
# Table name: enrollments
#
#  id          :bigint(8)        not null, primary key
#  status      :integer
#  waitinglist :boolean
#  user_id     :integer
#  event_id    :integer
#  admin       :boolean
#  moderator   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Enrollment < ApplicationRecord
  belongs_to :event
  belongs_to :user
end
