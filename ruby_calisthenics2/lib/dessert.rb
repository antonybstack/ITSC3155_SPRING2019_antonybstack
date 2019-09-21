class Dessert
  # add code for setters and getters
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
  end
  def delicious?
    # your code here
  end
  def name=(name_)
    @name = name_
  end
  def name
    @name
  end
  def calories=(calories_)
    @calories = calories_
  end
  def calories
    @calories
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
