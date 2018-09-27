# == Schema Information
#
# Table name: roles
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  group_id   :integer
#  admin      :boolean
#  moderator  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  belongs_to :group
  belongs_to :user
end
