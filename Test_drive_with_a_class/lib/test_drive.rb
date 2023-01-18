class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @x = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
   @word_count = @contents.split(' ').length()
  end

  def reading_time(wpm) 
    (@word_count/wpm.to_f).ceil()
  end

  def reading_chunk(wpm, minutes)
    @words = wpm*minutes
    if (@x + @words) > (@word_count)
      @x = 0
    end
    @x += @words
    array = @contents.split(' ')
    array[(@x - @words)...(@x)].join(' ')
  end
end

