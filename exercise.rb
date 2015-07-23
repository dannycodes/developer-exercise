class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  # Sample STR is: "food junk dog winner"
  def self.marklar(str)
    words = str.split(' ');
    chg_words = ""
    words.each do | word |
      if word.length > 4
        if /[[:punct:]]/.match(word[-1])
          punc = word[-1]
        else 
          punc = ""
        end

        if /[[:upper:]]/.match(word[0])
          word = "Marklar" + punc
        else
          word = "marklar" + punc
        end
      end
      chg_words << " " + word 
    end
    chg_words.lstrip! #Slay that leading whitespace
    return chg_words
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  # (1,1,2,3,5,8,13,21,34)
  def self.even_fibonacci(nth)
    total = 0
    first = 1
    second = 1
    # Iterate N times
    iterations = nth - 2 # since our next calc is for 3
    if iterations < 0 
      return total
    end
    iterations.times do
      next_num = first + second
      first = second
      second = next_num
      if next_num % 2 == 0
        total += next_num
      end
    end
    return total
  end

end
