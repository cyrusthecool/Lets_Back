# == Schema Information
#
# Table name: events
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  image       :text
#  location    :text
#  time        :string
#  date        :string
#  photos      :text
#  capacity    :integer
#  group_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
  belongs_to :group
  has_many :enrollments
  has_many :comments
  has_many :users, through: :enrollments
end
