class Pantry

  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    return 0 if @stock.empty?
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    if @stock.empty?
      @stock[ingredient] = quantity
    else
      @stock[ingredient] += quantity
    end
  end

end
