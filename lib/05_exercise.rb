class DiaryEntry
    def initialize(title, contents) 
        # title, contents are strings
        @title = title
        @contents = contents
        @bookmark = 0
    end
  
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      return @contents.split(" ").size
    end
  
    def reading_time(wpm) 
    # wpm is an integer representing the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
      fail "Reading speed must be above zero" unless wpm.positive?
      return (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) 
    # `wpm` is an integer representing the number of words the user can read per minute
    # `minutes` is an integer representing the number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    fail "Reading speed must be above zero" unless wpm > 0
    fail "Minutes to read must be above zero" unless minutes > 0

    chunk_size = minutes * wpm
    start_from = @bookmark
    end_at = @bookmark + chunk_size
    word_list =  words[start_from, end_at]
    
    if end_at >= count_words
      @bookmark = 0
    else
    @bookmark = end_at
    end
    return word_list.join(" ")
    end

    private
    def words
      return @contents.split(" ")
    end
end