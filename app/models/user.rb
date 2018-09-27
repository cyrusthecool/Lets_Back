# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  email      :text
#  admin      :boolean          default(FALSE)
#  image      :text
#  bio        :text
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  password   :text
#

class User < ApplicationRecord
  # validates_presence_of :name, :email, :password_digest

  has_secure_password

  has_many :roles
  has_many :comments
  has_many :groups, through: :roles

  has_many :enrollments
  has_many :events, through: :enrollments

  has_and_belongs_to_many :interests
end
