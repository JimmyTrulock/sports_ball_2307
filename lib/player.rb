class Player
    attr_accessor :name, :first_name, :last_name, :monthly_cost, :contract_length, :total_cost, :nickname

    def initialize(name, monthly_cost, contract_length)
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @first_name = name.split[0]
        @last_name = name.split[1]
        @total_cost = monthly_cost * contract_length
        @nickname = nil
    end

    def set_nickname(nickname)
        @nickname = nickname
    end
    
end
