class GrammarStats
    def initialize
      # ...
      @no_of_texts_checked = 0
      @true = 0
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      first_letter_check = text.chars.first == text.chars.first.upcase
      last_char_check = text.end_with?(".","!","?")

      if first_letter_check && last_char_check
        @no_of_texts_checked += 1
        @true += 100
        return true
      else 
        @no_of_texts_checked += 1
        return false
      end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      return (@true / @no_of_texts_checked)
    end
  end