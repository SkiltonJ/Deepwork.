class Theme < ApplicationRecord
  has_many :study_sessions, dependent: :destroy
  belongs_to :user, optional: true

  validates :study_duration, presence: true
  validates :name, presence: true
  VIDEOS = [
    { name: "40Hz Binaural Beats", url: "https://www.youtube.com/watch?v=1_G60OdEzXs&t=1121s&ab_channel=BeInspired%7CSTUDIO"},
    { name: "Gamma Brain Waves", url: "https://www.youtube.com/watch?v=Mnt4VO9uH1E&ab_channel=MusicMindMagic" },
    { name: "Pink Noise", url: "https://www.youtube.com/watch?v=8SHf6wmX5MU&ab_channel=Dalesnale-NoiseAmbient"},
    { name: "Brown Noise", url: "https://www.youtube.com/watch?v=UE8VKhM9KBs&t=2662s&ab_channel=Universe"},



  ]
end
