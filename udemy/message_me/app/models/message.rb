class Message < ApplicationRecord
  validates :body, presence: true, length: { minimum: 1, maximum: 100 }
  belongs_to :user

  def time_ago_in_words_custom
    time_to_use = updated_at || created_at

    return "no date" unless time_to_use

    seconds = (Time.now - time_to_use).to_i

    case seconds
    when 0..59
        "#{seconds} second#{'s' if seconds != 1} ago"
    when 60..3599
        minutes = seconds / 60
        "#{minutes} minute#{'s' if minutes != 1} ago"
    else
        hours = seconds / 3600
        "#{hours} hour#{'s' if hours != 1} ago"
    end
  end
end
