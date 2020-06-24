class Customer

    attr_reader :name, :wallet

def initialize(name, wallet)
    @name = name
    @wallet = wallet
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

