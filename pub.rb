class Pub

    attr_reader :name, :drinks, :till

    def initialize(name, till, drinks)
        @name = name
        @till = till
        @drinks = drinks
    end

    def cash_in_till?()
        if @till > 0
            return true
        else
            return false
        end
    end

    def get_drink_price(drink)
        return drink.price
    end

    def put_money_in_till(amount)
        @till += amount
    end

    def check_age(customer)
        if customer.age >= 18
            return true
        else
            return false
        end
    end

    def check_drunkenness(customer)
        if customer.drunkenness >= 10
            return true
        else
            return false
        end
    end

    def get_food_price(food)
        return food.price
    end

end
