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
    if (@flavor == "licorice")
      return false
    else
      return true
    end
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    @name = flavor + " jelly bean"
    @flavor = flavor
    @calories = 5
  end
  attr_accessor :flavor, :name
end
