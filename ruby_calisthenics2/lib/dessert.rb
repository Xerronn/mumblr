class Dessert
  # add code for setters and getters
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  attr_accessor :name, :calories
  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
