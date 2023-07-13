require './lib/player'

class Team
    attr_accessor :team_name, :city, :roster

    def initialize(team_name, city)
        @team_name = team_name
        @city = city
        @roster = []
    end

    def add_player(player)
        @roster << player
    end

    def player_count
        count = @roster.count
        count
    end

    def long_term_player
        roster.select {|player| player.contract_length > 24}
    end

    def short_term_player
        roster.select {|player| player.contract_length <= 24}
    end

    def total_value
        cost = 0
        roster.each do |player|
            cost = cost + player.total_cost
        end
        cost
    end

    def average_cost_of_player
        bucket = []
        roster.each do |player|
            bucket << player.total_cost
        end
        mean = bucket.sum / bucket.count
        mean
    end
end

