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

require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
