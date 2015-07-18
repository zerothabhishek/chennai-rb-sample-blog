class Post < ActiveRecord::Base

  def word_count
    body.size + title.size
  end

  def age
    now = Time.now
    birthday = self.created_at

    if birthday.year < now.year
      diff = now.year - birthday.year
      "#{diff} year"

    elsif birthday.year == now.year && birthday.month < now.month
      diff = now.month - birthday.month
      "#{diff} month"

    elsif birthday.year == now.year && birthday.month == now.month && birthday.day < now.day
      diff = now.day - birthday.day
      "#{diff} day"

    else
      "0 day"
    end
  end

end
