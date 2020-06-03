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
    if @stock[ingredient].nil?
      @stock[ingredient] = quantity
    else
      @stock[ingredient] += quantity
    end
  end

  def enough_ingredients_for?(recipe)
    return false if @stock.count < recipe.ingredients_required.count

    @stock.all? do |ing, qty|
      qty >= recipe.ingredients_required[ing]
    end
  end

end
