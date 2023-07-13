require 'rspec'
require './lib/team'

describe Team do
    it 'exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_an_instance_of(Team)
        expect(team.team_name).to eq("Dodgers")
        expect(team.city).to eq("Los Angeles")
    end
end

describe 'add_player' do
    it 'adds player to team roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        team.add_player(player_1)


    end
end

describe 'player_count' do
    it 'counts players in the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        team.add_player(player_1)

        expect(team.player_count).to eq(1)
        
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team.add_player(player_2)

        expect(team.player_count).to eq(2)
    end
end

describe 'long_term_player' do
    it 'pulls players with a contract greater than 2 years' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team.add_player(player_1)
        team.add_player(player_2)
        
    
    end
end

describe 'short_term_player' do
    it 'pulls players with a contract greater than 2 years' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team.add_player(player_1)
        team.add_player(player_2)
        
        
    end
end

describe 'total_value' do
    it "puts total cost of team" do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 50000, 24)
        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.total_value).to eq("4800000")
    end
end

describe 'average_cost_of_player' do
    it "puts average cost of players in team" do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 50000, 24)
        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.average_cost_of_player).to eq("4800000")
    end
end

