# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  name       :string
#  date       :date
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Video < ApplicationRecord
end
