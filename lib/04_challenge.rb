def get_most_common_letter(text)
    counter = Hash.new(0)
    # this worked fine
    text.delete!(" ")
    #added this as to not count the spaces - wasn't my 2nd thought!!
    text.chars.each do |char|
      counter[char] += 1
    #this worked as expected
    end
    counter.to_a.sort_by(&:last)[-1][0]
    #changed this from counter.to_a.sort_by { |k, v| v }[0][0]
    #the counter array was being sorted in ascending order so [0][0] was the character with the lowest count number
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

# Original code:
#   def get_most_common_letter(text)
#     counter = Hash.new(0)
#     text.chars.each do |char|
#       counter[char] += 1
#     end
#     counter.to_a.sort_by { |k, v| v }[0][0]
#   end
  