# == Schema Information
#
# Table name: groups
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  image       :text
#  location    :text
#  nickname    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ApplicationRecord
  has_many :roles
  has_many :users, through: :roles

  has_many :events
  has_and_belongs_to_many :interests
end
