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
end





end

