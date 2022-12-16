class DiaryEntry
    def initialize(title, contents) 
        # title, contents are strings
        @title = title
        @contents = contents
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
        return @contents.split(" ").size / wpm
    end
  
    def reading_chunk(wpm, minutes) 
    # `wpm` is an integer representing the number of words the user can read per minute
    # `minutes` is an integer representing the number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    chunk_size = minutes * wpm
    text_chunk = @contents.split(" ")

    bookmark = 0
    book_remaining = count_words

        while book_remaining >= chunk_size do
        puts text_chunk[bookmark..(bookmark + (chunk_size - 1))].join(" ") 
        book_remaining -= (bookmark + chunk_size)
        bookmark += chunk_size
        end
        puts text_chunk[bookmark..-1].join(' ')
        bookmark = 0
    end
end

diaryentry = DiaryEntry.new("one", (1..100).to_a.join(", "))
diaryentry.reading_chunk(5,15)