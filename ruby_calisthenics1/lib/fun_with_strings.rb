module FunWithStrings
  def palindrome?
    if self.reverse.upcase.gsub(/[^0-9A-Z]+/,"") == self.upcase.gsub(/[^0-9A-Z]+/,"")
      return true
    end
    return false
  end
  
  def count_words
    tempList = self.split(" ")
    tempHash = Hash.new
    tempList.each do |x|
      if x.downcase.gsub(/[^0-9a-z]+/,"") == ""
        next
      end
      if !tempHash.include? x.downcase.gsub(/[^0-9a-z]+/,"")
        tempHash[x.downcase.gsub(/[^0-9a-z]+/,"")] = 1
      else
        tempHash[x.downcase.gsub(/[^0-9a-z]+/,"")] += 1
      end
    end
    return tempHash
  end
  
  def anagram_groups
    ansArray = []
    found = false
    tempArray = self.split(" ")
    for i in 0..tempArray.length-1 do
      tempString = tempArray[i].split("")
      tempString = tempString.sort
      for j in i + 1..tempArray.length-1 do
        tempString2 = tempArray[j].split("")
        tempString2 = tempString2.sort
        if tempString == tempString2
          ansArray.append([tempArray[i], tempArray[j]])
          found = true
        end
      end
      if found == false
        ansArray.append([tempArray[i]])
      end
      found = false
    end
    return ansArray
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

puts "scream cars for four scar creams".anagram_groups
