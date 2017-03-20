# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
  validates :title, :description, :beds, :guests, presence: true
  validates :description, length: { in: 5...400 }
  validates :beds, :equal_to => integer:
  validates :guests, :equal_to => integer:
end
