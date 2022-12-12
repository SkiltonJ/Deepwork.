class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :themes, dependent: :destroy
  has_many :study_sessions
  has_many :topics, dependent: :destroy
  validates :first_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def current_level
    if duration < 100
      1
    elsif duration < 300
      2
    elsif duration < 600
      3
    elsif duration < 1000
      4
    elsif duration < 1500
      5
    elsif duration < 2100
      6
    elsif duration < 2800
      7
    elsif duration < 3600
      8
    elsif duration < 4700
      9
    elsif duration < 5700
      10
    elsif duration < 6800
      11
    elsif duration < 8000
      12
    elsif duration < 9300
      13
    elsif duration < 10_700
      14
    elsif duration < 11_200
      15
    elsif duration < 12_800
      16
    elsif duration < 14_500
      17
    elsif duration < 16_300
      18
    elsif duration < 18_200
      19
    elsif duration < 20_200
      20
    end
  end

  def duration
    obj = self.study_sessions
    obj.sum(:duration)
  end

  def daily_sessions
    obj = StudySession.where("updated_at >= ?", Date.today)
    obj.sum(:duration)
    obj.count
  end

  def daily_session_total_time
    obj = StudySession.where("updated_at >= ?", Date.today)
    obj.sum(:duration)
  end
end
