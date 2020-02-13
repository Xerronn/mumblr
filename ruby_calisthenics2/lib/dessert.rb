class Dessert
  # add code for setters and getters
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  attr_accessor :name, :calories
  def healthy?
    # your code here
  end
  def delicious?
    # your code here
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
