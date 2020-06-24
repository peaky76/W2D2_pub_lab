class Customer

    attr_reader :name, :wallet, :age, :drunkenness

def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
end

def buy_drink(drink, pub)
    # get price from the pub
    price = pub.get_drink_price(drink)
    # decrease wallet by price of beer
    @wallet -= price
    # increase till by price of beer
    pub.put_money_in_till(price)
    # increase customer drunkenness
    @drunkenness += drink.alcohol_level
end

def buy_food(food, pub)
    price = pub.get_food_price(food)
    @wallet -= price
    pub.put_money_in_till(price)
    @drunkenness -= food.rejuvenation_level
end





end

