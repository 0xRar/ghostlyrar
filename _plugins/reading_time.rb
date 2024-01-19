module Jekyll
  module ReadingTimeFilter
    def reading_time(input)
      words_per_minute = 180 # Adjust this value to your reading speed
      words = input.split.size
      minutes = (words / words_per_minute).floor
      minutes_label = minutes === 1 ? 'minute' : 'minutes'
      "#{minutes} #{minutes_label}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReadingTimeFilter)

