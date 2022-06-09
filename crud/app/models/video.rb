# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  duration    :integer
#  visible     :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Video < ApplicationRecord

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 200, minimum: 5 }
  # - format: { with: “” } <-  expresion regular

  validate :validate_custom_title

  before_save :send_notification
  # before_save :validate_custom_title
  after_save :send_email, if: :has_description?
  # after_save :send_notification_after_save


  def has_description?
    description.present?
  end

  private

  def send_notification
    puts ">>> video nuevo :)"
  end

  def send_email
    puts ">>> email :)"
  end

  def validate_custom_title

    errors.add(:title, "Este titulo no es valido") if title == "Codigo Facilito"
    
  end
end
