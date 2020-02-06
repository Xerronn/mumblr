# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, " + name
end

# Part II
def starts_with_consonant?(s)
  if s == ""
    return false
  end
  if s[0].downcase =~ /\W/ || s[0].downcase =~ /[aeiou]/
    return false
  end
  return true
end

# Part III
def binary_multiple_of_4? s
  if s !~ /^[0-1]+$/
    return false
  end
  if s == "0"
    return true
  end
  if s =~ /^[10]+0$/
    return true
  end
end