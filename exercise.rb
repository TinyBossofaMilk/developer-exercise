class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    strarr = str.split(" ")
    strarr.each_with_index do |x, i|
      if x.size > 4
        firstLetter = x[0]
        lastLetter = x[x.size - 1]
        hasPunctuation = lastLetter.match('[[:punct:]]')
        
        
        if firstLetter == firstLetter.upcase
          strarr[i] = "Marklar"
        else
          strarr[i] = "marklar"
        end
        
        if hasPunctuation
          strarr[i] += lastLetter
        end
      end
    end

    output = strarr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0
    i = 1
    prevNum = 0;
    ithNum = 1;
    tempCurr = 0;
    while i <= nth do
      if ithNum % 2 == 0 #if even 
        sum += ithNum
      end
      
      tempCurr = ithNum + prevNum
      prevNum = ithNum
      ithNum = tempCurr
      i+=1;
    end

    sum
  end

end
